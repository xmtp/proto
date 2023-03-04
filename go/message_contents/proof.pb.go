// Proof contains signature-based bindings for different use cases.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.0
// 	protoc        v3.21.12
// source: message_contents/proof.proto

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

// An association proof proves a child key (and/or other data) has been
// associated with a parent key.
type AssociationProof struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Union:
	//
	//	*AssociationProof_StaticCreateIdentityProof_
	//	*AssociationProof_SiweProof
	Union isAssociationProof_Union `protobuf_oneof:"union"`
}

func (x *AssociationProof) Reset() {
	*x = AssociationProof{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AssociationProof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AssociationProof) ProtoMessage() {}

func (x *AssociationProof) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AssociationProof.ProtoReflect.Descriptor instead.
func (*AssociationProof) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{0}
}

func (m *AssociationProof) GetUnion() isAssociationProof_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *AssociationProof) GetStaticCreateIdentityProof() *AssociationProof_StaticCreateIdentityProof {
	if x, ok := x.GetUnion().(*AssociationProof_StaticCreateIdentityProof_); ok {
		return x.StaticCreateIdentityProof
	}
	return nil
}

func (x *AssociationProof) GetSiweProof() *AssociationProof_SIWEProof {
	if x, ok := x.GetUnion().(*AssociationProof_SiweProof); ok {
		return x.SiweProof
	}
	return nil
}

type isAssociationProof_Union interface {
	isAssociationProof_Union()
}

type AssociationProof_StaticCreateIdentityProof_ struct {
	StaticCreateIdentityProof *AssociationProof_StaticCreateIdentityProof `protobuf:"bytes,1,opt,name=static_create_identity_proof,json=staticCreateIdentityProof,proto3,oneof"`
}

type AssociationProof_SiweProof struct {
	SiweProof *AssociationProof_SIWEProof `protobuf:"bytes,2,opt,name=siwe_proof,json=siweProof,proto3,oneof"`
}

func (*AssociationProof_StaticCreateIdentityProof_) isAssociationProof_Union() {}

func (*AssociationProof_SiweProof) isAssociationProof_Union() {}

// A revocation proof proves that a child key (and/or other data) has been
// revoked by a parent key
type RevocationProof struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Union:
	//
	//	*RevocationProof_SignedRevocationRequestV1_
	Union isRevocationProof_Union `protobuf_oneof:"union"`
}

func (x *RevocationProof) Reset() {
	*x = RevocationProof{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RevocationProof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RevocationProof) ProtoMessage() {}

func (x *RevocationProof) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RevocationProof.ProtoReflect.Descriptor instead.
func (*RevocationProof) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{1}
}

func (m *RevocationProof) GetUnion() isRevocationProof_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *RevocationProof) GetSignedRevocationRequestV1() *RevocationProof_SignedRevocationRequestV1 {
	if x, ok := x.GetUnion().(*RevocationProof_SignedRevocationRequestV1_); ok {
		return x.SignedRevocationRequestV1
	}
	return nil
}

type isRevocationProof_Union interface {
	isRevocationProof_Union()
}

type RevocationProof_SignedRevocationRequestV1_ struct {
	SignedRevocationRequestV1 *RevocationProof_SignedRevocationRequestV1 `protobuf:"bytes,1,opt,name=signed_revocation_request_v1,json=signedRevocationRequestV1,proto3,oneof"`
}

func (*RevocationProof_SignedRevocationRequestV1_) isRevocationProof_Union() {}

// Legacy: "XMTP : Create Identity ..." format
type AssociationProof_StaticCreateIdentityProof struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Text is the identitySignaturePayload e.g. Create Identity ...
	Text []byte `protobuf:"bytes,1,opt,name=text,proto3" json:"text,omitempty"`
	// Signature is the same as SignedPublicKey.Signature historically
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3" json:"signature,omitempty"`
}

func (x *AssociationProof_StaticCreateIdentityProof) Reset() {
	*x = AssociationProof_StaticCreateIdentityProof{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AssociationProof_StaticCreateIdentityProof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AssociationProof_StaticCreateIdentityProof) ProtoMessage() {}

func (x *AssociationProof_StaticCreateIdentityProof) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AssociationProof_StaticCreateIdentityProof.ProtoReflect.Descriptor instead.
func (*AssociationProof_StaticCreateIdentityProof) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{0, 0}
}

func (x *AssociationProof_StaticCreateIdentityProof) GetText() []byte {
	if x != nil {
		return x.Text
	}
	return nil
}

func (x *AssociationProof_StaticCreateIdentityProof) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

// Sign-in with Ethereum format (EIP-4361)
type AssociationProof_SIWESendKeyProof struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Text      []byte     `protobuf:"bytes,1,opt,name=text,proto3" json:"text,omitempty"`
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3" json:"signature,omitempty"`
}

func (x *AssociationProof_SIWESendKeyProof) Reset() {
	*x = AssociationProof_SIWESendKeyProof{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AssociationProof_SIWESendKeyProof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AssociationProof_SIWESendKeyProof) ProtoMessage() {}

func (x *AssociationProof_SIWESendKeyProof) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AssociationProof_SIWESendKeyProof.ProtoReflect.Descriptor instead.
func (*AssociationProof_SIWESendKeyProof) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{0, 1}
}

func (x *AssociationProof_SIWESendKeyProof) GetText() []byte {
	if x != nil {
		return x.Text
	}
	return nil
}

func (x *AssociationProof_SIWESendKeyProof) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

// Sign-in with Ethereum format (EIP-4361)
type AssociationProof_SIWEProof struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Text      []byte     `protobuf:"bytes,1,opt,name=text,proto3" json:"text,omitempty"`
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3" json:"signature,omitempty"`
}

func (x *AssociationProof_SIWEProof) Reset() {
	*x = AssociationProof_SIWEProof{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AssociationProof_SIWEProof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AssociationProof_SIWEProof) ProtoMessage() {}

func (x *AssociationProof_SIWEProof) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AssociationProof_SIWEProof.ProtoReflect.Descriptor instead.
func (*AssociationProof_SIWEProof) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{0, 2}
}

func (x *AssociationProof_SIWEProof) GetText() []byte {
	if x != nil {
		return x.Text
	}
	return nil
}

func (x *AssociationProof_SIWEProof) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

// A custom payload format defined in a future RFC
type RevocationProof_SignedRevocationRequestV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Text      []byte     `protobuf:"bytes,1,opt,name=text,proto3" json:"text,omitempty"`
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3" json:"signature,omitempty"`
}

func (x *RevocationProof_SignedRevocationRequestV1) Reset() {
	*x = RevocationProof_SignedRevocationRequestV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_proof_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RevocationProof_SignedRevocationRequestV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RevocationProof_SignedRevocationRequestV1) ProtoMessage() {}

func (x *RevocationProof_SignedRevocationRequestV1) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_proof_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RevocationProof_SignedRevocationRequestV1.ProtoReflect.Descriptor instead.
func (*RevocationProof_SignedRevocationRequestV1) Descriptor() ([]byte, []int) {
	return file_message_contents_proof_proto_rawDescGZIP(), []int{1, 0}
}

func (x *RevocationProof_SignedRevocationRequestV1) GetText() []byte {
	if x != nil {
		return x.Text
	}
	return nil
}

func (x *RevocationProof_SignedRevocationRequestV1) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

var File_message_contents_proof_proto protoreflect.FileDescriptor

var file_message_contents_proof_proto_rawDesc = []byte{
	0x0a, 0x1c, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x15,
	0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e,
	0x74, 0x65, 0x6e, 0x74, 0x73, 0x1a, 0x20, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63,
	0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xb0, 0x04, 0x0a, 0x10, 0x41, 0x73, 0x73, 0x6f,
	0x63, 0x69, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x12, 0x84, 0x01, 0x0a,
	0x1c, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63, 0x5f, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x5f, 0x69,
	0x64, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x5f, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x41, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x41, 0x73, 0x73, 0x6f,
	0x63, 0x69, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x2e, 0x53, 0x74, 0x61,
	0x74, 0x69, 0x63, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x49, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74,
	0x79, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x48, 0x00, 0x52, 0x19, 0x73, 0x74, 0x61, 0x74, 0x69, 0x63,
	0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x49, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x50, 0x72,
	0x6f, 0x6f, 0x66, 0x12, 0x52, 0x0a, 0x0a, 0x73, 0x69, 0x77, 0x65, 0x5f, 0x70, 0x72, 0x6f, 0x6f,
	0x66, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x31, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e,
	0x41, 0x73, 0x73, 0x6f, 0x63, 0x69, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66,
	0x2e, 0x53, 0x49, 0x57, 0x45, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x48, 0x00, 0x52, 0x09, 0x73, 0x69,
	0x77, 0x65, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x1a, 0x6f, 0x0a, 0x19, 0x53, 0x74, 0x61, 0x74, 0x69,
	0x63, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x49, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x50,
	0x72, 0x6f, 0x6f, 0x66, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x65, 0x78, 0x74, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0c, 0x52, 0x04, 0x74, 0x65, 0x78, 0x74, 0x12, 0x3e, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e,
	0x61, 0x74, 0x75, 0x72, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d,
	0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65,
	0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x52, 0x09, 0x73,
	0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x1a, 0x66, 0x0a, 0x10, 0x53, 0x49, 0x57, 0x45,
	0x53, 0x65, 0x6e, 0x64, 0x4b, 0x65, 0x79, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x12, 0x12, 0x0a, 0x04,
	0x74, 0x65, 0x78, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x04, 0x74, 0x65, 0x78, 0x74,
	0x12, 0x3e, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e,
	0x61, 0x74, 0x75, 0x72, 0x65, 0x52, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65,
	0x1a, 0x5f, 0x0a, 0x09, 0x53, 0x49, 0x57, 0x45, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x12, 0x12, 0x0a,
	0x04, 0x74, 0x65, 0x78, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x04, 0x74, 0x65, 0x78,
	0x74, 0x12, 0x3e, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67,
	0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x52, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72,
	0x65, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e, 0x22, 0x91, 0x02, 0x0a, 0x0f, 0x52,
	0x65, 0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x12, 0x83,
	0x01, 0x0a, 0x1c, 0x73, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x5f, 0x72, 0x65, 0x76, 0x6f, 0x63, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x76, 0x31, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x40, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x52, 0x65,
	0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x2e, 0x53, 0x69,
	0x67, 0x6e, 0x65, 0x64, 0x52, 0x65, 0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x56, 0x31, 0x48, 0x00, 0x52, 0x19, 0x73, 0x69, 0x67, 0x6e, 0x65,
	0x64, 0x52, 0x65, 0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x56, 0x31, 0x1a, 0x6f, 0x0a, 0x19, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x52, 0x65,
	0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x56,
	0x31, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x65, 0x78, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52,
	0x04, 0x74, 0x65, 0x78, 0x74, 0x12, 0x3e, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75,
	0x72, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e,
	0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73,
	0x2e, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x52, 0x09, 0x73, 0x69, 0x67, 0x6e,
	0x61, 0x74, 0x75, 0x72, 0x65, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e, 0x42, 0x4f,
	0x0a, 0x1f, 0x6f, 0x72, 0x67, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74,
	0x73, 0x5a, 0x2c, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x78, 0x6d,
	0x74, 0x70, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x76, 0x33, 0x2f, 0x67, 0x6f, 0x2f, 0x6d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x62,
	0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_message_contents_proof_proto_rawDescOnce sync.Once
	file_message_contents_proof_proto_rawDescData = file_message_contents_proof_proto_rawDesc
)

func file_message_contents_proof_proto_rawDescGZIP() []byte {
	file_message_contents_proof_proto_rawDescOnce.Do(func() {
		file_message_contents_proof_proto_rawDescData = protoimpl.X.CompressGZIP(file_message_contents_proof_proto_rawDescData)
	})
	return file_message_contents_proof_proto_rawDescData
}

var file_message_contents_proof_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_message_contents_proof_proto_goTypes = []interface{}{
	(*AssociationProof)(nil),                           // 0: xmtp.message_contents.AssociationProof
	(*RevocationProof)(nil),                            // 1: xmtp.message_contents.RevocationProof
	(*AssociationProof_StaticCreateIdentityProof)(nil), // 2: xmtp.message_contents.AssociationProof.StaticCreateIdentityProof
	(*AssociationProof_SIWESendKeyProof)(nil),          // 3: xmtp.message_contents.AssociationProof.SIWESendKeyProof
	(*AssociationProof_SIWEProof)(nil),                 // 4: xmtp.message_contents.AssociationProof.SIWEProof
	(*RevocationProof_SignedRevocationRequestV1)(nil),  // 5: xmtp.message_contents.RevocationProof.SignedRevocationRequestV1
	(*Signature)(nil),                                  // 6: xmtp.message_contents.Signature
}
var file_message_contents_proof_proto_depIdxs = []int32{
	2, // 0: xmtp.message_contents.AssociationProof.static_create_identity_proof:type_name -> xmtp.message_contents.AssociationProof.StaticCreateIdentityProof
	4, // 1: xmtp.message_contents.AssociationProof.siwe_proof:type_name -> xmtp.message_contents.AssociationProof.SIWEProof
	5, // 2: xmtp.message_contents.RevocationProof.signed_revocation_request_v1:type_name -> xmtp.message_contents.RevocationProof.SignedRevocationRequestV1
	6, // 3: xmtp.message_contents.AssociationProof.StaticCreateIdentityProof.signature:type_name -> xmtp.message_contents.Signature
	6, // 4: xmtp.message_contents.AssociationProof.SIWESendKeyProof.signature:type_name -> xmtp.message_contents.Signature
	6, // 5: xmtp.message_contents.AssociationProof.SIWEProof.signature:type_name -> xmtp.message_contents.Signature
	6, // 6: xmtp.message_contents.RevocationProof.SignedRevocationRequestV1.signature:type_name -> xmtp.message_contents.Signature
	7, // [7:7] is the sub-list for method output_type
	7, // [7:7] is the sub-list for method input_type
	7, // [7:7] is the sub-list for extension type_name
	7, // [7:7] is the sub-list for extension extendee
	0, // [0:7] is the sub-list for field type_name
}

func init() { file_message_contents_proof_proto_init() }
func file_message_contents_proof_proto_init() {
	if File_message_contents_proof_proto != nil {
		return
	}
	file_message_contents_signature_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_message_contents_proof_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AssociationProof); i {
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
		file_message_contents_proof_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RevocationProof); i {
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
		file_message_contents_proof_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AssociationProof_StaticCreateIdentityProof); i {
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
		file_message_contents_proof_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AssociationProof_SIWESendKeyProof); i {
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
		file_message_contents_proof_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AssociationProof_SIWEProof); i {
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
		file_message_contents_proof_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RevocationProof_SignedRevocationRequestV1); i {
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
	file_message_contents_proof_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*AssociationProof_StaticCreateIdentityProof_)(nil),
		(*AssociationProof_SiweProof)(nil),
	}
	file_message_contents_proof_proto_msgTypes[1].OneofWrappers = []interface{}{
		(*RevocationProof_SignedRevocationRequestV1_)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_message_contents_proof_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_message_contents_proof_proto_goTypes,
		DependencyIndexes: file_message_contents_proof_proto_depIdxs,
		MessageInfos:      file_message_contents_proof_proto_msgTypes,
	}.Build()
	File_message_contents_proof_proto = out.File
	file_message_contents_proof_proto_rawDesc = nil
	file_message_contents_proof_proto_goTypes = nil
	file_message_contents_proof_proto_depIdxs = nil
}
