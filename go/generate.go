package api

import (
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway" //nolint
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2"    //nolint
	_ "google.golang.org/grpc/cmd/protoc-gen-go-grpc"                     //nolint
	_ "google.golang.org/protobuf/cmd/protoc-gen-go"                      //nolint
)

//go:generate go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28.1
//go:generate go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway
//go:generate go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2
//go:generate go install google.golang.org/grpc/cmd/protoc-gen-go-grpc

//go:generate -command compile protoc --proto_path=../proto -I=. -I=../build/tmp/vendor --go_out=paths=source_relative:. --go-grpc_out=paths=source_relative:. --grpc-gateway_out=generate_unbound_methods=true,paths=source_relative:.

//go:generate compile ../proto/keystore_api/v1/keystore.proto
//go:generate compile ../proto/message_api/v1/message_api.proto
//go:generate compile ../proto/mls/api/v1/mls.proto
//go:generate compile ../proto/mls_validation/v1/service.proto
//go:generate compile ../proto/mls/message_contents/message.proto
//go:generate compile ../proto/message_api/v1/authn.proto
//go:generate compile ../proto/message_contents/content.proto
//go:generate compile ../proto/message_contents/conversation_reference.proto
//go:generate compile ../proto/message_contents/ciphertext.proto
//go:generate compile ../proto/message_contents/signature.proto
//go:generate compile ../proto/message_contents/public_key.proto
//go:generate compile ../proto/message_contents/private_key.proto
//go:generate compile ../proto/message_contents/contact.proto
//go:generate compile ../proto/message_contents/invitation.proto
//go:generate compile ../proto/message_contents/message.proto
//go:generate compile ../proto/message_contents/composite.proto
