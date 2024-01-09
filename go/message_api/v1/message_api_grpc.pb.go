// Message API

// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v4.25.1
// source: message_api/v1/message_api.proto

package v1

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	MessageApi_Publish_FullMethodName      = "/xmtp.message_api.v1.MessageApi/Publish"
	MessageApi_Subscribe_FullMethodName    = "/xmtp.message_api.v1.MessageApi/Subscribe"
	MessageApi_Subscribe2_FullMethodName   = "/xmtp.message_api.v1.MessageApi/Subscribe2"
	MessageApi_SubscribeAll_FullMethodName = "/xmtp.message_api.v1.MessageApi/SubscribeAll"
	MessageApi_Query_FullMethodName        = "/xmtp.message_api.v1.MessageApi/Query"
	MessageApi_BatchQuery_FullMethodName   = "/xmtp.message_api.v1.MessageApi/BatchQuery"
)

// MessageApiClient is the client API for MessageApi service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type MessageApiClient interface {
	// Publish messages to the network
	Publish(ctx context.Context, in *PublishRequest, opts ...grpc.CallOption) (*PublishResponse, error)
	// Subscribe to a stream of new envelopes matching a predicate
	Subscribe(ctx context.Context, in *SubscribeRequest, opts ...grpc.CallOption) (MessageApi_SubscribeClient, error)
	// Subscribe to a stream of new envelopes and your subscription using
	// bidirectional streaming
	// protolint:disable:next RPC_REQUEST_STANDARD_NAME
	Subscribe2(ctx context.Context, opts ...grpc.CallOption) (MessageApi_Subscribe2Client, error)
	// Subscribe to a stream of all messages
	SubscribeAll(ctx context.Context, in *SubscribeAllRequest, opts ...grpc.CallOption) (MessageApi_SubscribeAllClient, error)
	// Query the store for messages
	Query(ctx context.Context, in *QueryRequest, opts ...grpc.CallOption) (*QueryResponse, error)
	// BatchQuery containing a set of queries to be processed
	BatchQuery(ctx context.Context, in *BatchQueryRequest, opts ...grpc.CallOption) (*BatchQueryResponse, error)
}

type messageApiClient struct {
	cc grpc.ClientConnInterface
}

func NewMessageApiClient(cc grpc.ClientConnInterface) MessageApiClient {
	return &messageApiClient{cc}
}

func (c *messageApiClient) Publish(ctx context.Context, in *PublishRequest, opts ...grpc.CallOption) (*PublishResponse, error) {
	out := new(PublishResponse)
	err := c.cc.Invoke(ctx, MessageApi_Publish_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *messageApiClient) Subscribe(ctx context.Context, in *SubscribeRequest, opts ...grpc.CallOption) (MessageApi_SubscribeClient, error) {
	stream, err := c.cc.NewStream(ctx, &MessageApi_ServiceDesc.Streams[0], MessageApi_Subscribe_FullMethodName, opts...)
	if err != nil {
		return nil, err
	}
	x := &messageApiSubscribeClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type MessageApi_SubscribeClient interface {
	Recv() (*Envelope, error)
	grpc.ClientStream
}

type messageApiSubscribeClient struct {
	grpc.ClientStream
}

func (x *messageApiSubscribeClient) Recv() (*Envelope, error) {
	m := new(Envelope)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *messageApiClient) Subscribe2(ctx context.Context, opts ...grpc.CallOption) (MessageApi_Subscribe2Client, error) {
	stream, err := c.cc.NewStream(ctx, &MessageApi_ServiceDesc.Streams[1], MessageApi_Subscribe2_FullMethodName, opts...)
	if err != nil {
		return nil, err
	}
	x := &messageApiSubscribe2Client{stream}
	return x, nil
}

type MessageApi_Subscribe2Client interface {
	Send(*SubscribeRequest) error
	Recv() (*Envelope, error)
	grpc.ClientStream
}

type messageApiSubscribe2Client struct {
	grpc.ClientStream
}

func (x *messageApiSubscribe2Client) Send(m *SubscribeRequest) error {
	return x.ClientStream.SendMsg(m)
}

func (x *messageApiSubscribe2Client) Recv() (*Envelope, error) {
	m := new(Envelope)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *messageApiClient) SubscribeAll(ctx context.Context, in *SubscribeAllRequest, opts ...grpc.CallOption) (MessageApi_SubscribeAllClient, error) {
	stream, err := c.cc.NewStream(ctx, &MessageApi_ServiceDesc.Streams[2], MessageApi_SubscribeAll_FullMethodName, opts...)
	if err != nil {
		return nil, err
	}
	x := &messageApiSubscribeAllClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type MessageApi_SubscribeAllClient interface {
	Recv() (*Envelope, error)
	grpc.ClientStream
}

type messageApiSubscribeAllClient struct {
	grpc.ClientStream
}

func (x *messageApiSubscribeAllClient) Recv() (*Envelope, error) {
	m := new(Envelope)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *messageApiClient) Query(ctx context.Context, in *QueryRequest, opts ...grpc.CallOption) (*QueryResponse, error) {
	out := new(QueryResponse)
	err := c.cc.Invoke(ctx, MessageApi_Query_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *messageApiClient) BatchQuery(ctx context.Context, in *BatchQueryRequest, opts ...grpc.CallOption) (*BatchQueryResponse, error) {
	out := new(BatchQueryResponse)
	err := c.cc.Invoke(ctx, MessageApi_BatchQuery_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// MessageApiServer is the server API for MessageApi service.
// All implementations must embed UnimplementedMessageApiServer
// for forward compatibility
type MessageApiServer interface {
	// Publish messages to the network
	Publish(context.Context, *PublishRequest) (*PublishResponse, error)
	// Subscribe to a stream of new envelopes matching a predicate
	Subscribe(*SubscribeRequest, MessageApi_SubscribeServer) error
	// Subscribe to a stream of new envelopes and your subscription using
	// bidirectional streaming
	// protolint:disable:next RPC_REQUEST_STANDARD_NAME
	Subscribe2(MessageApi_Subscribe2Server) error
	// Subscribe to a stream of all messages
	SubscribeAll(*SubscribeAllRequest, MessageApi_SubscribeAllServer) error
	// Query the store for messages
	Query(context.Context, *QueryRequest) (*QueryResponse, error)
	// BatchQuery containing a set of queries to be processed
	BatchQuery(context.Context, *BatchQueryRequest) (*BatchQueryResponse, error)
	mustEmbedUnimplementedMessageApiServer()
}

// UnimplementedMessageApiServer must be embedded to have forward compatible implementations.
type UnimplementedMessageApiServer struct {
}

func (UnimplementedMessageApiServer) Publish(context.Context, *PublishRequest) (*PublishResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Publish not implemented")
}
func (UnimplementedMessageApiServer) Subscribe(*SubscribeRequest, MessageApi_SubscribeServer) error {
	return status.Errorf(codes.Unimplemented, "method Subscribe not implemented")
}
func (UnimplementedMessageApiServer) Subscribe2(MessageApi_Subscribe2Server) error {
	return status.Errorf(codes.Unimplemented, "method Subscribe2 not implemented")
}
func (UnimplementedMessageApiServer) SubscribeAll(*SubscribeAllRequest, MessageApi_SubscribeAllServer) error {
	return status.Errorf(codes.Unimplemented, "method SubscribeAll not implemented")
}
func (UnimplementedMessageApiServer) Query(context.Context, *QueryRequest) (*QueryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Query not implemented")
}
func (UnimplementedMessageApiServer) BatchQuery(context.Context, *BatchQueryRequest) (*BatchQueryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method BatchQuery not implemented")
}
func (UnimplementedMessageApiServer) mustEmbedUnimplementedMessageApiServer() {}

// UnsafeMessageApiServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to MessageApiServer will
// result in compilation errors.
type UnsafeMessageApiServer interface {
	mustEmbedUnimplementedMessageApiServer()
}

func RegisterMessageApiServer(s grpc.ServiceRegistrar, srv MessageApiServer) {
	s.RegisterService(&MessageApi_ServiceDesc, srv)
}

func _MessageApi_Publish_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PublishRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MessageApiServer).Publish(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MessageApi_Publish_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MessageApiServer).Publish(ctx, req.(*PublishRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MessageApi_Subscribe_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SubscribeRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(MessageApiServer).Subscribe(m, &messageApiSubscribeServer{stream})
}

type MessageApi_SubscribeServer interface {
	Send(*Envelope) error
	grpc.ServerStream
}

type messageApiSubscribeServer struct {
	grpc.ServerStream
}

func (x *messageApiSubscribeServer) Send(m *Envelope) error {
	return x.ServerStream.SendMsg(m)
}

func _MessageApi_Subscribe2_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(MessageApiServer).Subscribe2(&messageApiSubscribe2Server{stream})
}

type MessageApi_Subscribe2Server interface {
	Send(*Envelope) error
	Recv() (*SubscribeRequest, error)
	grpc.ServerStream
}

type messageApiSubscribe2Server struct {
	grpc.ServerStream
}

func (x *messageApiSubscribe2Server) Send(m *Envelope) error {
	return x.ServerStream.SendMsg(m)
}

func (x *messageApiSubscribe2Server) Recv() (*SubscribeRequest, error) {
	m := new(SubscribeRequest)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _MessageApi_SubscribeAll_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SubscribeAllRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(MessageApiServer).SubscribeAll(m, &messageApiSubscribeAllServer{stream})
}

type MessageApi_SubscribeAllServer interface {
	Send(*Envelope) error
	grpc.ServerStream
}

type messageApiSubscribeAllServer struct {
	grpc.ServerStream
}

func (x *messageApiSubscribeAllServer) Send(m *Envelope) error {
	return x.ServerStream.SendMsg(m)
}

func _MessageApi_Query_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(QueryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MessageApiServer).Query(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MessageApi_Query_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MessageApiServer).Query(ctx, req.(*QueryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MessageApi_BatchQuery_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(BatchQueryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MessageApiServer).BatchQuery(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MessageApi_BatchQuery_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MessageApiServer).BatchQuery(ctx, req.(*BatchQueryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// MessageApi_ServiceDesc is the grpc.ServiceDesc for MessageApi service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var MessageApi_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "xmtp.message_api.v1.MessageApi",
	HandlerType: (*MessageApiServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Publish",
			Handler:    _MessageApi_Publish_Handler,
		},
		{
			MethodName: "Query",
			Handler:    _MessageApi_Query_Handler,
		},
		{
			MethodName: "BatchQuery",
			Handler:    _MessageApi_BatchQuery_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "Subscribe",
			Handler:       _MessageApi_Subscribe_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "Subscribe2",
			Handler:       _MessageApi_Subscribe2_Handler,
			ServerStreams: true,
			ClientStreams: true,
		},
		{
			StreamName:    "SubscribeAll",
			Handler:       _MessageApi_SubscribeAll_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "message_api/v1/message_api.proto",
}
