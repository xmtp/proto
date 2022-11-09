// Contact Bundles are used to advertise user's public keys on the network.
// They are published in well known topics so that other participants
// can find them when they wish to communicate with the user.
// The public keys are used to sign messages and to derive encryption keys
// for some meta-messages, e.g. invitations.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.0
// 	protoc        v3.21.4
// source: message_contents/contact.proto

package message_contents

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// LEGACY: User key bundle V1 using PublicKeys.
// The PublicKeys MUST be signed.
type ContactBundleV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyBundle *PublicKeyBundle `protobuf:"bytes,1,opt,name=key_bundle,json=keyBundle,proto3" json:"key_bundle,omitempty"`
}

func (x *ContactBundleV1) Reset() {
	*x = ContactBundleV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_contact_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ContactBundleV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ContactBundleV1) ProtoMessage() {}

func (x *ContactBundleV1) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_contact_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ContactBundleV1.ProtoReflect.Descriptor instead.
func (*ContactBundleV1) Descriptor() ([]byte, []int) {
	return file_message_contents_contact_proto_rawDescGZIP(), []int{0}
}

func (x *ContactBundleV1) GetKeyBundle() *PublicKeyBundle {
	if x != nil {
		return x.KeyBundle
	}
	return nil
}

// User key bundle V2 using SignedPublicKeys.
type ContactBundleV2 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyBundle *SignedPublicKeyBundle `protobuf:"bytes,1,opt,name=key_bundle,json=keyBundle,proto3" json:"key_bundle,omitempty"`
}

func (x *ContactBundleV2) Reset() {
	*x = ContactBundleV2{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_contact_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ContactBundleV2) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ContactBundleV2) ProtoMessage() {}

func (x *ContactBundleV2) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_contact_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ContactBundleV2.ProtoReflect.Descriptor instead.
func (*ContactBundleV2) Descriptor() ([]byte, []int) {
	return file_message_contents_contact_proto_rawDescGZIP(), []int{1}
}

func (x *ContactBundleV2) GetKeyBundle() *SignedPublicKeyBundle {
	if x != nil {
		return x.KeyBundle
	}
	return nil
}

// Versioned ContactBundle
type ContactBundle struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Version:
	//	*ContactBundle_V1
	//	*ContactBundle_V2
	Version isContactBundle_Version `protobuf_oneof:"version"`
}

func (x *ContactBundle) Reset() {
	*x = ContactBundle{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_contact_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ContactBundle) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ContactBundle) ProtoMessage() {}

func (x *ContactBundle) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_contact_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ContactBundle.ProtoReflect.Descriptor instead.
func (*ContactBundle) Descriptor() ([]byte, []int) {
	return file_message_contents_contact_proto_rawDescGZIP(), []int{2}
}

func (m *ContactBundle) GetVersion() isContactBundle_Version {
	if m != nil {
		return m.Version
	}
	return nil
}

func (x *ContactBundle) GetV1() *ContactBundleV1 {
	if x, ok := x.GetVersion().(*ContactBundle_V1); ok {
		return x.V1
	}
	return nil
}

func (x *ContactBundle) GetV2() *ContactBundleV2 {
	if x, ok := x.GetVersion().(*ContactBundle_V2); ok {
		return x.V2
	}
	return nil
}

type isContactBundle_Version interface {
	isContactBundle_Version()
}

type ContactBundle_V1 struct {
	V1 *ContactBundleV1 `protobuf:"bytes,1,opt,name=v1,proto3,oneof"`
}

type ContactBundle_V2 struct {
	V2 *ContactBundleV2 `protobuf:"bytes,2,opt,name=v2,proto3,oneof"`
}

func (*ContactBundle_V1) isContactBundle_Version() {}

func (*ContactBundle_V2) isContactBundle_Version() {}

var File_message_contents_contact_proto protoreflect.FileDescriptor

var file_message_contents_contact_proto_rawDesc = []byte{
	0x0a, 0x1e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x2f, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x12, 0x15, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63,
	0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x1a, 0x21, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x70, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x5f, 0x6b, 0x65, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x58, 0x0a, 0x0f, 0x43, 0x6f,
	0x6e, 0x74, 0x61, 0x63, 0x74, 0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x56, 0x31, 0x12, 0x45, 0x0a,
	0x0a, 0x6b, 0x65, 0x79, 0x5f, 0x62, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x26, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x4b, 0x65, 0x79, 0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x52, 0x09, 0x6b, 0x65, 0x79, 0x42, 0x75,
	0x6e, 0x64, 0x6c, 0x65, 0x22, 0x5e, 0x0a, 0x0f, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x42,
	0x75, 0x6e, 0x64, 0x6c, 0x65, 0x56, 0x32, 0x12, 0x4b, 0x0a, 0x0a, 0x6b, 0x65, 0x79, 0x5f, 0x62,
	0x75, 0x6e, 0x64, 0x6c, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x2c, 0x2e, 0x78, 0x6d,
	0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65,
	0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x4b, 0x65, 0x79, 0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x52, 0x09, 0x6b, 0x65, 0x79, 0x42, 0x75,
	0x6e, 0x64, 0x6c, 0x65, 0x22, 0x8e, 0x01, 0x0a, 0x0d, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74,
	0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x12, 0x38, 0x0a, 0x02, 0x76, 0x31, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x26, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x43, 0x6f, 0x6e, 0x74, 0x61,
	0x63, 0x74, 0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x56, 0x31, 0x48, 0x00, 0x52, 0x02, 0x76, 0x31,
	0x12, 0x38, 0x0a, 0x02, 0x76, 0x32, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x26, 0x2e, 0x78,
	0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74,
	0x65, 0x6e, 0x74, 0x73, 0x2e, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x63, 0x74, 0x42, 0x75, 0x6e, 0x64,
	0x6c, 0x65, 0x56, 0x32, 0x48, 0x00, 0x52, 0x02, 0x76, 0x32, 0x42, 0x09, 0x0a, 0x07, 0x76, 0x65,
	0x72, 0x73, 0x69, 0x6f, 0x6e, 0x42, 0x2b, 0x5a, 0x29, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e,
	0x63, 0x6f, 0x6d, 0x2f, 0x78, 0x6d, 0x74, 0x70, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x67,
	0x6f, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_message_contents_contact_proto_rawDescOnce sync.Once
	file_message_contents_contact_proto_rawDescData = file_message_contents_contact_proto_rawDesc
)

func file_message_contents_contact_proto_rawDescGZIP() []byte {
	file_message_contents_contact_proto_rawDescOnce.Do(func() {
		file_message_contents_contact_proto_rawDescData = protoimpl.X.CompressGZIP(file_message_contents_contact_proto_rawDescData)
	})
	return file_message_contents_contact_proto_rawDescData
}

var file_message_contents_contact_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_message_contents_contact_proto_goTypes = []interface{}{
	(*ContactBundleV1)(nil),       // 0: xmtp.message_contents.ContactBundleV1
	(*ContactBundleV2)(nil),       // 1: xmtp.message_contents.ContactBundleV2
	(*ContactBundle)(nil),         // 2: xmtp.message_contents.ContactBundle
	(*PublicKeyBundle)(nil),       // 3: xmtp.message_contents.PublicKeyBundle
	(*SignedPublicKeyBundle)(nil), // 4: xmtp.message_contents.SignedPublicKeyBundle
}
var file_message_contents_contact_proto_depIdxs = []int32{
	3, // 0: xmtp.message_contents.ContactBundleV1.key_bundle:type_name -> xmtp.message_contents.PublicKeyBundle
	4, // 1: xmtp.message_contents.ContactBundleV2.key_bundle:type_name -> xmtp.message_contents.SignedPublicKeyBundle
	0, // 2: xmtp.message_contents.ContactBundle.v1:type_name -> xmtp.message_contents.ContactBundleV1
	1, // 3: xmtp.message_contents.ContactBundle.v2:type_name -> xmtp.message_contents.ContactBundleV2
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_message_contents_contact_proto_init() }
func file_message_contents_contact_proto_init() {
	if File_message_contents_contact_proto != nil {
		return
	}
	file_message_contents_public_key_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_message_contents_contact_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ContactBundleV1); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_message_contents_contact_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ContactBundleV2); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_message_contents_contact_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ContactBundle); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_message_contents_contact_proto_msgTypes[2].OneofWrappers = []interface{}{
		(*ContactBundle_V1)(nil),
		(*ContactBundle_V2)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_message_contents_contact_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_message_contents_contact_proto_goTypes,
		DependencyIndexes: file_message_contents_contact_proto_depIdxs,
		MessageInfos:      file_message_contents_contact_proto_msgTypes,
	}.Build()
	File_message_contents_contact_proto = out.File
	file_message_contents_contact_proto_rawDesc = nil
	file_message_contents_contact_proto_goTypes = nil
	file_message_contents_contact_proto_depIdxs = nil
}
