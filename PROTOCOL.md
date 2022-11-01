# The XMTP Protocol

## Intro

The protocol allows `clients`, representing identities associated with blockchain accounts (further 'accounts'), to communicate securely with each other. The communications are represented as `conversations` between two or more clients. Conversation consists of a sequence of `messages` from a `sender` to the other `participants` of the conversation, the `recipients`.

The communication is mediated by a network of `nodes`. The network is responsible for ensuring that messages are delivered between clients. Since clients are not necessarily connected to the network at the same time, the network must be able to store messages while they are in transit.

The protocol is layered to satisfy various operational and security requirements. For example, the clients are responsible for all the encryption and authentication, and key management. The nodes generally see only encrypted content with no indication of identities involved.

## Network Layer

Messages are opaque to the node (usually encrypted), i.e. nodes do not read/interpret the contents of the messages. Unencrypted message headers are readable and can be processed by the nodes.

Consequently messages are just opaque `payload` to the nodes, wrapped in `envelopes` before being passed to the network by the clients. Besides the payload, envelopes also carry a `timestamp` and `topic`.

Envelopes are always associated with a `topic`. Topics are used to group related envelopes. Topic is a required parameter of all interactions with the network layer, e.g. "add this envelope to this topic", "give me all envelopes from this topic with timestamp between X and Y", or "send me all new envelopes for this topic".

Nodes employ [Waku relay protocol](https://rfc.vac.dev/spec/11/) to propagate envelopes through the network and [Waku store protocol](https://rfc.vac.dev/spec/13/) to make envelopes persist.

## Client Layer

Clients connect to an arbitrary node though a GRPC based [message API](https://github.com/xmtp/proto/blob/main/proto/message_api/v1/message_api.proto) and interact with the network as a whole through this node. The message API is the interface separating the client layer from the network layer. Conversations are represented at the network layer as topics.

The client layer uses protobuf for encoding of all its structures. The definitions are maintained in the [xtmp/proto repository](https://github.com/xmtp/proto/blob/main/proto).

### Keys

A client is associated with a blockchain account through a set of public/private keys (EC secp256k1) generated when the account is registered with the XMTP network. First there is the identity key that serves as a proxy for the account key and is signed by the account key to establish its authenticity. Then there is one or more pre-keys that are used for message encryption. The pre-keys are signed by the identity key to prove authenticity. The two level key structure is there to facilitate more frequent key rotation without requiring frequent account key signing. The key structure and naming is modelled after [Signal's X3DH protocol](https://signal.org/docs/specifications/x3dh/#the-x3dh-protocol).

The keys are maintained and stored together in a key bundle, the private keys in a [EncryptedPrivateKeyBundle](https://github.com/xmtp/proto/blob/main/proto/message_contents/private_key.proto) and public keys in a [SignedPublicKeyBundle](https://github.com/xmtp/proto/blob/main/proto/message_contents/public_key.proto).

### Contacts

To start a conversation the initiator needs the public keys of the participants. To facilitate this step registered clients publish their public key bundle in easily discoverable contact topics.

Each blockchain account is automatically assigned a contact topic named `contact-<account address>`. Public key bundles are published as [ContactBundles](https://github.com/xmtp/proto/blob/main/proto/message_contents/contact.proto) which allow for versioning of the bundle format. A public key bundle MUST be republished whenever the pre-key or identity-key changes. The latest published bundle represents the current bundle that should be used for all new messages and conversations.

Only account owners should be able to publish into their contact topics. When publishing a contact into a contact topic, the nodes MUST verify that the bundle being published is a valid bundle signed by the account that owns the contact topic (i.e. the address in the topic name matches the address of the account that signed the bundle). The nodes must also verify that the created_ns time of the pre-key in the bundle is newer than the created_ns time of the pre-key in the latest published bundle.

### Invitations

A conversation is initiated by a client sending an [Invitation](https://github.com/xmtp/proto/blob/main/proto/message_contents/invitation.proto) to one or more participants. The invitation contains a randomly generated name of the topic to be used for the conversation messages, and randomly generated secret key material to be used for message encryption. It also indicates the encryption algorithm to use for message encryption.

Invitations are published into invite topics. Each blockchain account is automatically assigned an invite topic named `invite-<account address>`. It contains all the invitations both sent and received by the account owner. It allows the client to reconstruct the list of all past conversations and to find their corresponding message topics.

Invitations are encrypted using a key derived from the pre-keys of the invitation sender and recipient. Consequently the sender and the recipient of an invitation are present in the header, outside of the encrypted payload, and visible to outside observers (i.e. nodes).

### Messages

[Messages](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto) are published into conversation topics indicated by the corresponding invitation. Conversation topic names follow the format `m-<base64 encoded random 32bytes>`.

Message content is encoded using a content type framework represented by the [EncodedContent type](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto). Usage of the content type framework is governed by [XIP-5](https://github.com/xmtp/XIPs/blob/main/XIPs/xip-5-message-content-types.md).

The bytes of the `EncodedContent` are wrapped in [SignedContent](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto), signed using the pre-key of the sender. The signature covers the bytes of the `EncodedContent` and the bytes of the [MessageHeaderV2](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto) to frustrate replay attacks. `SignedContent` is then encrypted using the key material from the invitation and wrapped in [Ciphertext](https://github.com/xmtp/proto/blob/main/proto/message_contents/ciphertext.proto). Finally [MessageV2](https://github.com/xmtp/proto/blob/main/proto/message_contents/xmtp_envelope.proto) combines the `Ciphertext` and the bytes of the message header.
