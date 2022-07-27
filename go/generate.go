package api

//go:generate go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
//go:generate protoc --proto_path=../proto -I=. -I=../build/tmp/vendor --go_out=. --go-grpc_out=. --grpc-gateway_out=generate_unbound_methods=true:. ../proto/message_api/v1/message_api.proto
