package api

import (
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway" //nolint
	_ "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2"    //nolint
	_ "google.golang.org/grpc/cmd/protoc-gen-go-grpc"                     //nolint
	_ "google.golang.org/protobuf/cmd/protoc-gen-go"                      //nolint
)

//go:generate go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
//go:generate protoc --proto_path=../proto -I=. -I=../build/tmp/vendor --go_out=. --go-grpc_out=. --grpc-gateway_out=generate_unbound_methods=true:. ../proto/message_api/v1/message_api.proto
//go:generate protoc --proto_path=../proto -I=. -I=../build/tmp/vendor --go_out=. --go-grpc_out=. --grpc-gateway_out=generate_unbound_methods=true:. ../proto/authn/v1/authn.proto
