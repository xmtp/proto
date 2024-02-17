// Message API

// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v4.25.1
// source: mls/api/v1/mls.proto

package v1

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	MlsApi_SendGroupMessages_FullMethodName        = "/xmtp.mls.api.v1.MlsApi/SendGroupMessages"
	MlsApi_SendWelcomeMessages_FullMethodName      = "/xmtp.mls.api.v1.MlsApi/SendWelcomeMessages"
	MlsApi_RegisterInstallation_FullMethodName     = "/xmtp.mls.api.v1.MlsApi/RegisterInstallation"
	MlsApi_UploadKeyPackage_FullMethodName         = "/xmtp.mls.api.v1.MlsApi/UploadKeyPackage"
	MlsApi_FetchKeyPackages_FullMethodName         = "/xmtp.mls.api.v1.MlsApi/FetchKeyPackages"
	MlsApi_RevokeInstallation_FullMethodName       = "/xmtp.mls.api.v1.MlsApi/RevokeInstallation"
	MlsApi_GetIdentityUpdates_FullMethodName       = "/xmtp.mls.api.v1.MlsApi/GetIdentityUpdates"
	MlsApi_QueryGroupMessages_FullMethodName       = "/xmtp.mls.api.v1.MlsApi/QueryGroupMessages"
	MlsApi_QueryWelcomeMessages_FullMethodName     = "/xmtp.mls.api.v1.MlsApi/QueryWelcomeMessages"
	MlsApi_SubscribeGroupMessages_FullMethodName   = "/xmtp.mls.api.v1.MlsApi/SubscribeGroupMessages"
	MlsApi_SubscribeWelcomeMessages_FullMethodName = "/xmtp.mls.api.v1.MlsApi/SubscribeWelcomeMessages"
)

// MlsApiClient is the client API for MlsApi service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type MlsApiClient interface {
	// Send a MLS payload, that would be validated before being stored to the
	// network
	SendGroupMessages(ctx context.Context, in *SendGroupMessagesRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	// Send a batch of welcome messages
	SendWelcomeMessages(ctx context.Context, in *SendWelcomeMessagesRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	// Register a new installation, which would be validated before storage
	RegisterInstallation(ctx context.Context, in *RegisterInstallationRequest, opts ...grpc.CallOption) (*RegisterInstallationResponse, error)
	// Upload a new KeyPackage, which would be validated before storage
	UploadKeyPackage(ctx context.Context, in *UploadKeyPackageRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	// Get one or more Key Packages by installation_id
	FetchKeyPackages(ctx context.Context, in *FetchKeyPackagesRequest, opts ...grpc.CallOption) (*FetchKeyPackagesResponse, error)
	// Would delete all key packages associated with the installation and mark
	// the installation as having been revoked
	RevokeInstallation(ctx context.Context, in *RevokeInstallationRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	// Used to check for changes related to members of a group.
	// Would return an array of any new installations associated with the wallet
	// address, and any revocations that have happened.
	GetIdentityUpdates(ctx context.Context, in *GetIdentityUpdatesRequest, opts ...grpc.CallOption) (*GetIdentityUpdatesResponse, error)
	// Query stored group messages
	QueryGroupMessages(ctx context.Context, in *QueryGroupMessagesRequest, opts ...grpc.CallOption) (*QueryGroupMessagesResponse, error)
	// Query stored group messages
	QueryWelcomeMessages(ctx context.Context, in *QueryWelcomeMessagesRequest, opts ...grpc.CallOption) (*QueryWelcomeMessagesResponse, error)
	// Subscribe stream of new group messages
	SubscribeGroupMessages(ctx context.Context, in *SubscribeGroupMessagesRequest, opts ...grpc.CallOption) (MlsApi_SubscribeGroupMessagesClient, error)
	// Subscribe stream of new welcome messages
	SubscribeWelcomeMessages(ctx context.Context, in *SubscribeWelcomeMessagesRequest, opts ...grpc.CallOption) (MlsApi_SubscribeWelcomeMessagesClient, error)
}

type mlsApiClient struct {
	cc grpc.ClientConnInterface
}

func NewMlsApiClient(cc grpc.ClientConnInterface) MlsApiClient {
	return &mlsApiClient{cc}
}

func (c *mlsApiClient) SendGroupMessages(ctx context.Context, in *SendGroupMessagesRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, MlsApi_SendGroupMessages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) SendWelcomeMessages(ctx context.Context, in *SendWelcomeMessagesRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, MlsApi_SendWelcomeMessages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) RegisterInstallation(ctx context.Context, in *RegisterInstallationRequest, opts ...grpc.CallOption) (*RegisterInstallationResponse, error) {
	out := new(RegisterInstallationResponse)
	err := c.cc.Invoke(ctx, MlsApi_RegisterInstallation_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) UploadKeyPackage(ctx context.Context, in *UploadKeyPackageRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, MlsApi_UploadKeyPackage_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) FetchKeyPackages(ctx context.Context, in *FetchKeyPackagesRequest, opts ...grpc.CallOption) (*FetchKeyPackagesResponse, error) {
	out := new(FetchKeyPackagesResponse)
	err := c.cc.Invoke(ctx, MlsApi_FetchKeyPackages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) RevokeInstallation(ctx context.Context, in *RevokeInstallationRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, MlsApi_RevokeInstallation_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) GetIdentityUpdates(ctx context.Context, in *GetIdentityUpdatesRequest, opts ...grpc.CallOption) (*GetIdentityUpdatesResponse, error) {
	out := new(GetIdentityUpdatesResponse)
	err := c.cc.Invoke(ctx, MlsApi_GetIdentityUpdates_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) QueryGroupMessages(ctx context.Context, in *QueryGroupMessagesRequest, opts ...grpc.CallOption) (*QueryGroupMessagesResponse, error) {
	out := new(QueryGroupMessagesResponse)
	err := c.cc.Invoke(ctx, MlsApi_QueryGroupMessages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) QueryWelcomeMessages(ctx context.Context, in *QueryWelcomeMessagesRequest, opts ...grpc.CallOption) (*QueryWelcomeMessagesResponse, error) {
	out := new(QueryWelcomeMessagesResponse)
	err := c.cc.Invoke(ctx, MlsApi_QueryWelcomeMessages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *mlsApiClient) SubscribeGroupMessages(ctx context.Context, in *SubscribeGroupMessagesRequest, opts ...grpc.CallOption) (MlsApi_SubscribeGroupMessagesClient, error) {
	stream, err := c.cc.NewStream(ctx, &MlsApi_ServiceDesc.Streams[0], MlsApi_SubscribeGroupMessages_FullMethodName, opts...)
	if err != nil {
		return nil, err
	}
	x := &mlsApiSubscribeGroupMessagesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type MlsApi_SubscribeGroupMessagesClient interface {
	Recv() (*GroupMessage, error)
	grpc.ClientStream
}

type mlsApiSubscribeGroupMessagesClient struct {
	grpc.ClientStream
}

func (x *mlsApiSubscribeGroupMessagesClient) Recv() (*GroupMessage, error) {
	m := new(GroupMessage)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *mlsApiClient) SubscribeWelcomeMessages(ctx context.Context, in *SubscribeWelcomeMessagesRequest, opts ...grpc.CallOption) (MlsApi_SubscribeWelcomeMessagesClient, error) {
	stream, err := c.cc.NewStream(ctx, &MlsApi_ServiceDesc.Streams[1], MlsApi_SubscribeWelcomeMessages_FullMethodName, opts...)
	if err != nil {
		return nil, err
	}
	x := &mlsApiSubscribeWelcomeMessagesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type MlsApi_SubscribeWelcomeMessagesClient interface {
	Recv() (*WelcomeMessage, error)
	grpc.ClientStream
}

type mlsApiSubscribeWelcomeMessagesClient struct {
	grpc.ClientStream
}

func (x *mlsApiSubscribeWelcomeMessagesClient) Recv() (*WelcomeMessage, error) {
	m := new(WelcomeMessage)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// MlsApiServer is the server API for MlsApi service.
// All implementations must embed UnimplementedMlsApiServer
// for forward compatibility
type MlsApiServer interface {
	// Send a MLS payload, that would be validated before being stored to the
	// network
	SendGroupMessages(context.Context, *SendGroupMessagesRequest) (*emptypb.Empty, error)
	// Send a batch of welcome messages
	SendWelcomeMessages(context.Context, *SendWelcomeMessagesRequest) (*emptypb.Empty, error)
	// Register a new installation, which would be validated before storage
	RegisterInstallation(context.Context, *RegisterInstallationRequest) (*RegisterInstallationResponse, error)
	// Upload a new KeyPackage, which would be validated before storage
	UploadKeyPackage(context.Context, *UploadKeyPackageRequest) (*emptypb.Empty, error)
	// Get one or more Key Packages by installation_id
	FetchKeyPackages(context.Context, *FetchKeyPackagesRequest) (*FetchKeyPackagesResponse, error)
	// Would delete all key packages associated with the installation and mark
	// the installation as having been revoked
	RevokeInstallation(context.Context, *RevokeInstallationRequest) (*emptypb.Empty, error)
	// Used to check for changes related to members of a group.
	// Would return an array of any new installations associated with the wallet
	// address, and any revocations that have happened.
	GetIdentityUpdates(context.Context, *GetIdentityUpdatesRequest) (*GetIdentityUpdatesResponse, error)
	// Query stored group messages
	QueryGroupMessages(context.Context, *QueryGroupMessagesRequest) (*QueryGroupMessagesResponse, error)
	// Query stored group messages
	QueryWelcomeMessages(context.Context, *QueryWelcomeMessagesRequest) (*QueryWelcomeMessagesResponse, error)
	// Subscribe stream of new group messages
	SubscribeGroupMessages(*SubscribeGroupMessagesRequest, MlsApi_SubscribeGroupMessagesServer) error
	// Subscribe stream of new welcome messages
	SubscribeWelcomeMessages(*SubscribeWelcomeMessagesRequest, MlsApi_SubscribeWelcomeMessagesServer) error
	mustEmbedUnimplementedMlsApiServer()
}

// UnimplementedMlsApiServer must be embedded to have forward compatible implementations.
type UnimplementedMlsApiServer struct {
}

func (UnimplementedMlsApiServer) SendGroupMessages(context.Context, *SendGroupMessagesRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SendGroupMessages not implemented")
}
func (UnimplementedMlsApiServer) SendWelcomeMessages(context.Context, *SendWelcomeMessagesRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SendWelcomeMessages not implemented")
}
func (UnimplementedMlsApiServer) RegisterInstallation(context.Context, *RegisterInstallationRequest) (*RegisterInstallationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RegisterInstallation not implemented")
}
func (UnimplementedMlsApiServer) UploadKeyPackage(context.Context, *UploadKeyPackageRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UploadKeyPackage not implemented")
}
func (UnimplementedMlsApiServer) FetchKeyPackages(context.Context, *FetchKeyPackagesRequest) (*FetchKeyPackagesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method FetchKeyPackages not implemented")
}
func (UnimplementedMlsApiServer) RevokeInstallation(context.Context, *RevokeInstallationRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RevokeInstallation not implemented")
}
func (UnimplementedMlsApiServer) GetIdentityUpdates(context.Context, *GetIdentityUpdatesRequest) (*GetIdentityUpdatesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetIdentityUpdates not implemented")
}
func (UnimplementedMlsApiServer) QueryGroupMessages(context.Context, *QueryGroupMessagesRequest) (*QueryGroupMessagesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method QueryGroupMessages not implemented")
}
func (UnimplementedMlsApiServer) QueryWelcomeMessages(context.Context, *QueryWelcomeMessagesRequest) (*QueryWelcomeMessagesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method QueryWelcomeMessages not implemented")
}
func (UnimplementedMlsApiServer) SubscribeGroupMessages(*SubscribeGroupMessagesRequest, MlsApi_SubscribeGroupMessagesServer) error {
	return status.Errorf(codes.Unimplemented, "method SubscribeGroupMessages not implemented")
}
func (UnimplementedMlsApiServer) SubscribeWelcomeMessages(*SubscribeWelcomeMessagesRequest, MlsApi_SubscribeWelcomeMessagesServer) error {
	return status.Errorf(codes.Unimplemented, "method SubscribeWelcomeMessages not implemented")
}
func (UnimplementedMlsApiServer) mustEmbedUnimplementedMlsApiServer() {}

// UnsafeMlsApiServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to MlsApiServer will
// result in compilation errors.
type UnsafeMlsApiServer interface {
	mustEmbedUnimplementedMlsApiServer()
}

func RegisterMlsApiServer(s grpc.ServiceRegistrar, srv MlsApiServer) {
	s.RegisterService(&MlsApi_ServiceDesc, srv)
}

func _MlsApi_SendGroupMessages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SendGroupMessagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).SendGroupMessages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_SendGroupMessages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).SendGroupMessages(ctx, req.(*SendGroupMessagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_SendWelcomeMessages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SendWelcomeMessagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).SendWelcomeMessages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_SendWelcomeMessages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).SendWelcomeMessages(ctx, req.(*SendWelcomeMessagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_RegisterInstallation_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RegisterInstallationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).RegisterInstallation(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_RegisterInstallation_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).RegisterInstallation(ctx, req.(*RegisterInstallationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_UploadKeyPackage_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UploadKeyPackageRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).UploadKeyPackage(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_UploadKeyPackage_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).UploadKeyPackage(ctx, req.(*UploadKeyPackageRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_FetchKeyPackages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(FetchKeyPackagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).FetchKeyPackages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_FetchKeyPackages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).FetchKeyPackages(ctx, req.(*FetchKeyPackagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_RevokeInstallation_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RevokeInstallationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).RevokeInstallation(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_RevokeInstallation_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).RevokeInstallation(ctx, req.(*RevokeInstallationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_GetIdentityUpdates_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetIdentityUpdatesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).GetIdentityUpdates(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_GetIdentityUpdates_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).GetIdentityUpdates(ctx, req.(*GetIdentityUpdatesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_QueryGroupMessages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(QueryGroupMessagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).QueryGroupMessages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_QueryGroupMessages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).QueryGroupMessages(ctx, req.(*QueryGroupMessagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_QueryWelcomeMessages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(QueryWelcomeMessagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MlsApiServer).QueryWelcomeMessages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: MlsApi_QueryWelcomeMessages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MlsApiServer).QueryWelcomeMessages(ctx, req.(*QueryWelcomeMessagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _MlsApi_SubscribeGroupMessages_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SubscribeGroupMessagesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(MlsApiServer).SubscribeGroupMessages(m, &mlsApiSubscribeGroupMessagesServer{stream})
}

type MlsApi_SubscribeGroupMessagesServer interface {
	Send(*GroupMessage) error
	grpc.ServerStream
}

type mlsApiSubscribeGroupMessagesServer struct {
	grpc.ServerStream
}

func (x *mlsApiSubscribeGroupMessagesServer) Send(m *GroupMessage) error {
	return x.ServerStream.SendMsg(m)
}

func _MlsApi_SubscribeWelcomeMessages_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SubscribeWelcomeMessagesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(MlsApiServer).SubscribeWelcomeMessages(m, &mlsApiSubscribeWelcomeMessagesServer{stream})
}

type MlsApi_SubscribeWelcomeMessagesServer interface {
	Send(*WelcomeMessage) error
	grpc.ServerStream
}

type mlsApiSubscribeWelcomeMessagesServer struct {
	grpc.ServerStream
}

func (x *mlsApiSubscribeWelcomeMessagesServer) Send(m *WelcomeMessage) error {
	return x.ServerStream.SendMsg(m)
}

// MlsApi_ServiceDesc is the grpc.ServiceDesc for MlsApi service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var MlsApi_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "xmtp.mls.api.v1.MlsApi",
	HandlerType: (*MlsApiServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "SendGroupMessages",
			Handler:    _MlsApi_SendGroupMessages_Handler,
		},
		{
			MethodName: "SendWelcomeMessages",
			Handler:    _MlsApi_SendWelcomeMessages_Handler,
		},
		{
			MethodName: "RegisterInstallation",
			Handler:    _MlsApi_RegisterInstallation_Handler,
		},
		{
			MethodName: "UploadKeyPackage",
			Handler:    _MlsApi_UploadKeyPackage_Handler,
		},
		{
			MethodName: "FetchKeyPackages",
			Handler:    _MlsApi_FetchKeyPackages_Handler,
		},
		{
			MethodName: "RevokeInstallation",
			Handler:    _MlsApi_RevokeInstallation_Handler,
		},
		{
			MethodName: "GetIdentityUpdates",
			Handler:    _MlsApi_GetIdentityUpdates_Handler,
		},
		{
			MethodName: "QueryGroupMessages",
			Handler:    _MlsApi_QueryGroupMessages_Handler,
		},
		{
			MethodName: "QueryWelcomeMessages",
			Handler:    _MlsApi_QueryWelcomeMessages_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "SubscribeGroupMessages",
			Handler:       _MlsApi_SubscribeGroupMessages_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SubscribeWelcomeMessages",
			Handler:       _MlsApi_SubscribeWelcomeMessages_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "mls/api/v1/mls.proto",
}
