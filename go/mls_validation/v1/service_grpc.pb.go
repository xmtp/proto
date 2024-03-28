// Message API

// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v4.25.3
// source: mls_validation/v1/service.proto

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
	ValidationApi_ValidateKeyPackages_FullMethodName   = "/xmtp.mls_validation.v1.ValidationApi/ValidateKeyPackages"
	ValidationApi_ValidateGroupMessages_FullMethodName = "/xmtp.mls_validation.v1.ValidationApi/ValidateGroupMessages"
)

// ValidationApiClient is the client API for ValidationApi service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type ValidationApiClient interface {
	// Validates and parses a batch of key packages and returns relevant details
	ValidateKeyPackages(ctx context.Context, in *ValidateKeyPackagesRequest, opts ...grpc.CallOption) (*ValidateKeyPackagesResponse, error)
	// Validates and parses a group message and returns relevant details
	ValidateGroupMessages(ctx context.Context, in *ValidateGroupMessagesRequest, opts ...grpc.CallOption) (*ValidateGroupMessagesResponse, error)
}

type validationApiClient struct {
	cc grpc.ClientConnInterface
}

func NewValidationApiClient(cc grpc.ClientConnInterface) ValidationApiClient {
	return &validationApiClient{cc}
}

func (c *validationApiClient) ValidateKeyPackages(ctx context.Context, in *ValidateKeyPackagesRequest, opts ...grpc.CallOption) (*ValidateKeyPackagesResponse, error) {
	out := new(ValidateKeyPackagesResponse)
	err := c.cc.Invoke(ctx, ValidationApi_ValidateKeyPackages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *validationApiClient) ValidateGroupMessages(ctx context.Context, in *ValidateGroupMessagesRequest, opts ...grpc.CallOption) (*ValidateGroupMessagesResponse, error) {
	out := new(ValidateGroupMessagesResponse)
	err := c.cc.Invoke(ctx, ValidationApi_ValidateGroupMessages_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ValidationApiServer is the server API for ValidationApi service.
// All implementations must embed UnimplementedValidationApiServer
// for forward compatibility
type ValidationApiServer interface {
	// Validates and parses a batch of key packages and returns relevant details
	ValidateKeyPackages(context.Context, *ValidateKeyPackagesRequest) (*ValidateKeyPackagesResponse, error)
	// Validates and parses a group message and returns relevant details
	ValidateGroupMessages(context.Context, *ValidateGroupMessagesRequest) (*ValidateGroupMessagesResponse, error)
	mustEmbedUnimplementedValidationApiServer()
}

// UnimplementedValidationApiServer must be embedded to have forward compatible implementations.
type UnimplementedValidationApiServer struct {
}

func (UnimplementedValidationApiServer) ValidateKeyPackages(context.Context, *ValidateKeyPackagesRequest) (*ValidateKeyPackagesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ValidateKeyPackages not implemented")
}
func (UnimplementedValidationApiServer) ValidateGroupMessages(context.Context, *ValidateGroupMessagesRequest) (*ValidateGroupMessagesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ValidateGroupMessages not implemented")
}
func (UnimplementedValidationApiServer) mustEmbedUnimplementedValidationApiServer() {}

// UnsafeValidationApiServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to ValidationApiServer will
// result in compilation errors.
type UnsafeValidationApiServer interface {
	mustEmbedUnimplementedValidationApiServer()
}

func RegisterValidationApiServer(s grpc.ServiceRegistrar, srv ValidationApiServer) {
	s.RegisterService(&ValidationApi_ServiceDesc, srv)
}

func _ValidationApi_ValidateKeyPackages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ValidateKeyPackagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ValidationApiServer).ValidateKeyPackages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ValidationApi_ValidateKeyPackages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ValidationApiServer).ValidateKeyPackages(ctx, req.(*ValidateKeyPackagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ValidationApi_ValidateGroupMessages_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ValidateGroupMessagesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ValidationApiServer).ValidateGroupMessages(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ValidationApi_ValidateGroupMessages_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ValidationApiServer).ValidateGroupMessages(ctx, req.(*ValidateGroupMessagesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// ValidationApi_ServiceDesc is the grpc.ServiceDesc for ValidationApi service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var ValidationApi_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "xmtp.mls_validation.v1.ValidationApi",
	HandlerType: (*ValidationApiServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "ValidateKeyPackages",
			Handler:    _ValidationApi_ValidateKeyPackages_Handler,
		},
		{
			MethodName: "ValidateGroupMessages",
			Handler:    _ValidationApi_ValidateGroupMessages_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "mls_validation/v1/service.proto",
}
