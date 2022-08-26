# The XMTP Protocol

## Intro

The protocol allows `clients`, representing identities associated with wallet addresses, to communicate securely with each other. The communications are represented as `conversations` between two or more clients. Conversation consists of a sequence of `messages` from a `sender` to the other `participants` of the conversation, the `recipients`.

The communication is mediated by a network of `nodes`. The network is responsible for ensuring that messages are delivered between clients. Since clients are not necessarily connected to the network at the same time, the network must be able to store messages while they are in transit.

The protocol is layered to satisfy various operational and security requirements. For example, the clients are responsible for all the encryption and authentication, and key management. The nodes generally only see encrypted content with no indication of identities involved.

## Node Layer

Nodes employ Waku relay protocol to propagate messages through the network and Waku store protocol to make messages persist.

Messages are opaque to the node (usually encrypted), i.e. nodes do not read/interpret the contents of the messages. Message headers are readable and processed by the nodes. Message timestamp is an example of information that the nodes have about a message.

Messages are always associated with a `topic`. Topics are used to group related messages. Topic is a required parameter of all interactions with this layer, e.g. "add this message to this topic", "give me all messages from this topic with timestamp between X and Y", or "send me all new messages for this topic".

## Client Layer

Clients connect to an arbitrary node though a GRPC based "message API" and interact with the network as a whole through this node. The message API is the interface separating the client layer from the node layer. Conversations are represented at the node layer as topics.

The client layer uses protobuf for encoding of all its structures. The definitions are maintained in the [xtmp/proto repository](https://github.com/xmtp/proto/blob/main/proto).

### Keys

A client is associated with a wallet address through a set of public/private keys (EC secp256k1) generated when the wallet is registered with the XMTP network. First there is the identity key that serves as a proxy for the wallet key and is signed by the wallet to establish its authenticity. Then there is one or more pre-keys that are used for message encryption. The pre-key authenticity is established with an identity key signature. The two level key structure is there to facilitate more frequent key rotation without requiring frequent wallet signing. The key structure and naming is modelled after [Signal's X3DH protocol](https://signal.org/docs/specifications/x3dh/#the-x3dh-protocol).

The keys are maintained and stored together in a key bundle, the private keys in a [PrivateKeyBundle](https://github.com/xmtp/proto/blob/main/proto/message_contents/private_key.proto) and public keys in a [PublicKeyBundle](https://github.com/xmtp/proto/blob/main/proto/message_contents/public_key.proto).

### Contacts

To start a conversation the initiator needs the public keys of the participants. To facilitate this step registered clients publish their public key bundle in easily discoverable contact topics.

Each user is automatically assigned a contact topic named `contact-<user's wallet address>`. Public key bundles are published as [ContactBundles](https://github.com/xmtp/proto/blob/main/proto/message_contents/contact.proto) which allow for versioning of the bundle contents and format. A public key bundle MUST be republished whenever the pre-key or identity-key changes. The latest published bundle represents the current bundle that should be used for all new messages and conversations.

(TODO) When publishing a contact into a contact topic, the nodes MUST verify that the bundle being published is a valid bundle signed by the wallet that owns the contact topic (i.e. the address in the topic name matches the address of the wallet that signed the bundle). The nodes must also verify that the created_ns time of the pre-key in the bundle is newer than the created_ns time of the pre-key in the latest published bundle.

### Invitations

A conversation is initiated by a client sending an [Invitation](https://github.com/xmtp/proto/blob/main/proto/message_contents/invitation.proto) to one or more participants. The invitation contains a randomly generated name of the topic to be used for the conversation messages, and secret key material to be used for message encryption.

Invitations are published into invite topics. Each user is automatically assigned an invite topic named `invite-<user's wallet address>`. It contains all the invitation both sent and received by the user. It allows the client to reconstruct the list of all past conversations and to find their corresponding message topics.

Invitations are encrypted using a key derived from the pre-keys of the sender and the recipient. Consequently the sender and the recipient of an invitation are in the header, outside of the encrypted payload, and visible to outside observers (i.e. nodes).

### Messages

[Messages](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto) are encrypted using the key material from the invitation. The plain text of the messages is also signed by the pre-key of the sender.

Message content is encoded using a content type framework represented by the [EncodedContent type](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto). Usage of the content type framework is governed by [XIP-5](https://github.com/xmtp/XIPs/blob/main/XIPs/xip-5-message-content-types.md).
