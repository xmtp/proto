This is the authoritative source of information about the XMTP protocol itself. It contains

* an overview of the protocol [PROTOCOL.md](https://github.com/xmtp/proto/blob/main/PROTOCOL.md)
* the protobuf definitions of all the elements of the protocol [/proto](https://github.com/xmtp/proto/blob/main/proto)
* code generated from the protobuf definitions [go/](https://github.com/xmtp/proto/blob/main/go)

Note that the generated typescript code is not committed here, instead it is generated dynamically when publishing the [proto package to npm](https://www.npmjs.com/package/@xmtp/proto)

The overview and the protobuf files together form the definition of the protocol. The overview leans heavily on the protobuf files and also serves as a guide for finding the relevant details in them.

## Working on this repo

Before committing any changes to this repo, you will want to run `npm i` at least once. This will install the Husky precommit hooks to your machine.

Go code will be regenerated based on the `.proto` files on each commit and does not need to be done manually.

Commit messages must be in the [Angular Commit Message Convention](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)
