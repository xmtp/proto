// Ciphertext is a generic structure for encrypted payload.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.0
// 	protoc        v3.21.4
// source: message_contents/ciphertext.proto

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

// Ciphertext represents encrypted payload.
// It is definited as a union to support cryptographic algorithm agility.
// The payload is accompanied by the cryptographic parameters
// required by the chosen encryption scheme.
type Ciphertext struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Union:
	//
	//	*Ciphertext_Aes256GcmHkdfSha256
	Union isCiphertext_Union `protobuf_oneof:"union"`
}

func (x *Ciphertext) Reset() {
	*x = Ciphertext{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_ciphertext_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Ciphertext) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Ciphertext) ProtoMessage() {}

func (x *Ciphertext) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_ciphertext_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Ciphertext.ProtoReflect.Descriptor instead.
func (*Ciphertext) Descriptor() ([]byte, []int) {
	return file_message_contents_ciphertext_proto_rawDescGZIP(), []int{0}
}

func (m *Ciphertext) GetUnion() isCiphertext_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *Ciphertext) GetAes256GcmHkdfSha256() *Ciphertext_Aes256GcmHkdfsha256 {
	if x, ok := x.GetUnion().(*Ciphertext_Aes256GcmHkdfSha256); ok {
		return x.Aes256GcmHkdfSha256
	}
	return nil
}

type isCiphertext_Union interface {
	isCiphertext_Union()
}

type Ciphertext_Aes256GcmHkdfSha256 struct {
	Aes256GcmHkdfSha256 *Ciphertext_Aes256GcmHkdfsha256 `protobuf:"bytes,1,opt,name=aes256_gcm_hkdf_sha256,json=aes256GcmHkdfSha256,proto3,oneof"`
}

func (*Ciphertext_Aes256GcmHkdfSha256) isCiphertext_Union() {}

// Encryption: AES256-GCM
// Key derivation function: HKDF-SHA256
type Ciphertext_Aes256GcmHkdfsha256 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	HkdfSalt []byte `protobuf:"bytes,1,opt,name=hkdf_salt,json=hkdfSalt,proto3" json:"hkdf_salt,omitempty"` // 32 bytes
	GcmNonce []byte `protobuf:"bytes,2,opt,name=gcm_nonce,json=gcmNonce,proto3" json:"gcm_nonce,omitempty"` // 12 bytes
	Payload  []byte `protobuf:"bytes,3,opt,name=payload,proto3" json:"payload,omitempty"`                   // encrypted payload
}

func (x *Ciphertext_Aes256GcmHkdfsha256) Reset() {
	*x = Ciphertext_Aes256GcmHkdfsha256{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_ciphertext_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Ciphertext_Aes256GcmHkdfsha256) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Ciphertext_Aes256GcmHkdfsha256) ProtoMessage() {}

func (x *Ciphertext_Aes256GcmHkdfsha256) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_ciphertext_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Ciphertext_Aes256GcmHkdfsha256.ProtoReflect.Descriptor instead.
func (*Ciphertext_Aes256GcmHkdfsha256) Descriptor() ([]byte, []int) {
	return file_message_contents_ciphertext_proto_rawDescGZIP(), []int{0, 0}
}

func (x *Ciphertext_Aes256GcmHkdfsha256) GetHkdfSalt() []byte {
	if x != nil {
		return x.HkdfSalt
	}
	return nil
}

func (x *Ciphertext_Aes256GcmHkdfsha256) GetGcmNonce() []byte {
	if x != nil {
		return x.GcmNonce
	}
	return nil
}

func (x *Ciphertext_Aes256GcmHkdfsha256) GetPayload() []byte {
	if x != nil {
		return x.Payload
	}
	return nil
}

var File_message_contents_ciphertext_proto protoreflect.FileDescriptor

var file_message_contents_ciphertext_proto_rawDesc = []byte{
	0x0a, 0x21, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x2f, 0x63, 0x69, 0x70, 0x68, 0x65, 0x72, 0x74, 0x65, 0x78, 0x74, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x12, 0x15, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x22, 0xee, 0x01, 0x0a, 0x0a, 0x43,
	0x69, 0x70, 0x68, 0x65, 0x72, 0x74, 0x65, 0x78, 0x74, 0x12, 0x6c, 0x0a, 0x16, 0x61, 0x65, 0x73,
	0x32, 0x35, 0x36, 0x5f, 0x67, 0x63, 0x6d, 0x5f, 0x68, 0x6b, 0x64, 0x66, 0x5f, 0x73, 0x68, 0x61,
	0x32, 0x35, 0x36, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x35, 0x2e, 0x78, 0x6d, 0x74, 0x70,
	0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74,
	0x73, 0x2e, 0x43, 0x69, 0x70, 0x68, 0x65, 0x72, 0x74, 0x65, 0x78, 0x74, 0x2e, 0x41, 0x65, 0x73,
	0x32, 0x35, 0x36, 0x67, 0x63, 0x6d, 0x48, 0x6b, 0x64, 0x66, 0x73, 0x68, 0x61, 0x32, 0x35, 0x36,
	0x48, 0x00, 0x52, 0x13, 0x61, 0x65, 0x73, 0x32, 0x35, 0x36, 0x47, 0x63, 0x6d, 0x48, 0x6b, 0x64,
	0x66, 0x53, 0x68, 0x61, 0x32, 0x35, 0x36, 0x1a, 0x69, 0x0a, 0x13, 0x41, 0x65, 0x73, 0x32, 0x35,
	0x36, 0x67, 0x63, 0x6d, 0x48, 0x6b, 0x64, 0x66, 0x73, 0x68, 0x61, 0x32, 0x35, 0x36, 0x12, 0x1b,
	0x0a, 0x09, 0x68, 0x6b, 0x64, 0x66, 0x5f, 0x73, 0x61, 0x6c, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0c, 0x52, 0x08, 0x68, 0x6b, 0x64, 0x66, 0x53, 0x61, 0x6c, 0x74, 0x12, 0x1b, 0x0a, 0x09, 0x67,
	0x63, 0x6d, 0x5f, 0x6e, 0x6f, 0x6e, 0x63, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x08,
	0x67, 0x63, 0x6d, 0x4e, 0x6f, 0x6e, 0x63, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x70, 0x61, 0x79, 0x6c,
	0x6f, 0x61, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x07, 0x70, 0x61, 0x79, 0x6c, 0x6f,
	0x61, 0x64, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e, 0x42, 0x4f, 0x0a, 0x1f, 0x6f,
	0x72, 0x67, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2e, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x5a, 0x2c,
	0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x78, 0x6d, 0x74, 0x70, 0x2f,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x76, 0x33, 0x2f, 0x67, 0x6f, 0x2f, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_message_contents_ciphertext_proto_rawDescOnce sync.Once
	file_message_contents_ciphertext_proto_rawDescData = file_message_contents_ciphertext_proto_rawDesc
)

func file_message_contents_ciphertext_proto_rawDescGZIP() []byte {
	file_message_contents_ciphertext_proto_rawDescOnce.Do(func() {
		file_message_contents_ciphertext_proto_rawDescData = protoimpl.X.CompressGZIP(file_message_contents_ciphertext_proto_rawDescData)
	})
	return file_message_contents_ciphertext_proto_rawDescData
}

var file_message_contents_ciphertext_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_message_contents_ciphertext_proto_goTypes = []interface{}{
	(*Ciphertext)(nil),                     // 0: xmtp.message_contents.Ciphertext
	(*Ciphertext_Aes256GcmHkdfsha256)(nil), // 1: xmtp.message_contents.Ciphertext.Aes256gcmHkdfsha256
}
var file_message_contents_ciphertext_proto_depIdxs = []int32{
	1, // 0: xmtp.message_contents.Ciphertext.aes256_gcm_hkdf_sha256:type_name -> xmtp.message_contents.Ciphertext.Aes256gcmHkdfsha256
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_message_contents_ciphertext_proto_init() }
func file_message_contents_ciphertext_proto_init() {
	if File_message_contents_ciphertext_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_message_contents_ciphertext_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Ciphertext); i {
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
		file_message_contents_ciphertext_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Ciphertext_Aes256GcmHkdfsha256); i {
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
	file_message_contents_ciphertext_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*Ciphertext_Aes256GcmHkdfSha256)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_message_contents_ciphertext_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_message_contents_ciphertext_proto_goTypes,
		DependencyIndexes: file_message_contents_ciphertext_proto_depIdxs,
		MessageInfos:      file_message_contents_ciphertext_proto_msgTypes,
	}.Build()
	File_message_contents_ciphertext_proto = out.File
	file_message_contents_ciphertext_proto_rawDesc = nil
	file_message_contents_ciphertext_proto_goTypes = nil
	file_message_contents_ciphertext_proto_depIdxs = nil
}
