// Structure for representing public keys of different types,
// including signatures used to authenticate the keys.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.0
// 	protoc        v3.21.12
// source: message_contents/public_key.proto

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

// UnsignedPublicKey represents a generalized public key,
// defined as a union to support cryptographic algorithm agility.
type UnsignedPublicKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CreatedNs uint64 `protobuf:"varint,1,opt,name=created_ns,json=createdNs,proto3" json:"created_ns,omitempty"`
	// Types that are assignable to Union:
	//
	//	*UnsignedPublicKey_Secp256K1Uncompressed_
	Union isUnsignedPublicKey_Union `protobuf_oneof:"union"`
}

func (x *UnsignedPublicKey) Reset() {
	*x = UnsignedPublicKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UnsignedPublicKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UnsignedPublicKey) ProtoMessage() {}

func (x *UnsignedPublicKey) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UnsignedPublicKey.ProtoReflect.Descriptor instead.
func (*UnsignedPublicKey) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{0}
}

func (x *UnsignedPublicKey) GetCreatedNs() uint64 {
	if x != nil {
		return x.CreatedNs
	}
	return 0
}

func (m *UnsignedPublicKey) GetUnion() isUnsignedPublicKey_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *UnsignedPublicKey) GetSecp256K1Uncompressed() *UnsignedPublicKey_Secp256K1Uncompressed {
	if x, ok := x.GetUnion().(*UnsignedPublicKey_Secp256K1Uncompressed_); ok {
		return x.Secp256K1Uncompressed
	}
	return nil
}

type isUnsignedPublicKey_Union interface {
	isUnsignedPublicKey_Union()
}

type UnsignedPublicKey_Secp256K1Uncompressed_ struct {
	Secp256K1Uncompressed *UnsignedPublicKey_Secp256K1Uncompressed `protobuf:"bytes,3,opt,name=secp256k1_uncompressed,json=secp256k1Uncompressed,proto3,oneof"`
}

func (*UnsignedPublicKey_Secp256K1Uncompressed_) isUnsignedPublicKey_Union() {}

// Signed public key that uses self-describing signatures (aka
// 'AssociationProof')
type SignedPublicKeyV2 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyBytes []byte            `protobuf:"bytes,1,opt,name=key_bytes,json=keyBytes,proto3" json:"key_bytes,omitempty"` // embeds an UnsignedPublicKey
	Proof    *AssociationProof `protobuf:"bytes,2,opt,name=proof,proto3" json:"proof,omitempty"`                       // signs key_bytes
}

func (x *SignedPublicKeyV2) Reset() {
	*x = SignedPublicKeyV2{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SignedPublicKeyV2) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SignedPublicKeyV2) ProtoMessage() {}

func (x *SignedPublicKeyV2) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SignedPublicKeyV2.ProtoReflect.Descriptor instead.
func (*SignedPublicKeyV2) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{1}
}

func (x *SignedPublicKeyV2) GetKeyBytes() []byte {
	if x != nil {
		return x.KeyBytes
	}
	return nil
}

func (x *SignedPublicKeyV2) GetProof() *AssociationProof {
	if x != nil {
		return x.Proof
	}
	return nil
}

// A signed revocation of a public key
type SignedPublicKeyRevocation struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyBytes []byte           `protobuf:"bytes,1,opt,name=key_bytes,json=keyBytes,proto3" json:"key_bytes,omitempty"` // embeds an UnsignedPublicKey
	Proof    *RevocationProof `protobuf:"bytes,2,opt,name=proof,proto3" json:"proof,omitempty"`                       // signs key_bytes
}

func (x *SignedPublicKeyRevocation) Reset() {
	*x = SignedPublicKeyRevocation{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SignedPublicKeyRevocation) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SignedPublicKeyRevocation) ProtoMessage() {}

func (x *SignedPublicKeyRevocation) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SignedPublicKeyRevocation.ProtoReflect.Descriptor instead.
func (*SignedPublicKeyRevocation) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{2}
}

func (x *SignedPublicKeyRevocation) GetKeyBytes() []byte {
	if x != nil {
		return x.KeyBytes
	}
	return nil
}

func (x *SignedPublicKeyRevocation) GetProof() *RevocationProof {
	if x != nil {
		return x.Proof
	}
	return nil
}

// A bundle that represents either the provisioning or revocation of a send key
type SignedSendKeyBundle struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Union:
	//
	//	*SignedSendKeyBundle_SendKey
	//	*SignedSendKeyBundle_RevokedSendKey
	Union isSignedSendKeyBundle_Union `protobuf_oneof:"union"`
}

func (x *SignedSendKeyBundle) Reset() {
	*x = SignedSendKeyBundle{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SignedSendKeyBundle) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SignedSendKeyBundle) ProtoMessage() {}

func (x *SignedSendKeyBundle) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SignedSendKeyBundle.ProtoReflect.Descriptor instead.
func (*SignedSendKeyBundle) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{3}
}

func (m *SignedSendKeyBundle) GetUnion() isSignedSendKeyBundle_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *SignedSendKeyBundle) GetSendKey() *SignedPublicKeyV2 {
	if x, ok := x.GetUnion().(*SignedSendKeyBundle_SendKey); ok {
		return x.SendKey
	}
	return nil
}

func (x *SignedSendKeyBundle) GetRevokedSendKey() *SignedPublicKeyRevocation {
	if x, ok := x.GetUnion().(*SignedSendKeyBundle_RevokedSendKey); ok {
		return x.RevokedSendKey
	}
	return nil
}

type isSignedSendKeyBundle_Union interface {
	isSignedSendKeyBundle_Union()
}

type SignedSendKeyBundle_SendKey struct {
	SendKey *SignedPublicKeyV2 `protobuf:"bytes,1,opt,name=send_key,json=sendKey,proto3,oneof"`
}

type SignedSendKeyBundle_RevokedSendKey struct {
	RevokedSendKey *SignedPublicKeyRevocation `protobuf:"bytes,2,opt,name=revoked_send_key,json=revokedSendKey,proto3,oneof"`
}

func (*SignedSendKeyBundle_SendKey) isSignedSendKeyBundle_Union() {}

func (*SignedSendKeyBundle_RevokedSendKey) isSignedSendKeyBundle_Union() {}

// SignedPublicKey
type SignedPublicKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeyBytes  []byte     `protobuf:"bytes,1,opt,name=key_bytes,json=keyBytes,proto3" json:"key_bytes,omitempty"` // embeds an UnsignedPublicKey
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3" json:"signature,omitempty"`               // signs key_bytes
}

func (x *SignedPublicKey) Reset() {
	*x = SignedPublicKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SignedPublicKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SignedPublicKey) ProtoMessage() {}

func (x *SignedPublicKey) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SignedPublicKey.ProtoReflect.Descriptor instead.
func (*SignedPublicKey) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{4}
}

func (x *SignedPublicKey) GetKeyBytes() []byte {
	if x != nil {
		return x.KeyBytes
	}
	return nil
}

func (x *SignedPublicKey) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

// PublicKeyBundle packages the cryptographic keys associated with a wallet.
type SignedPublicKeyBundle struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Identity key MUST be signed by the wallet.
	IdentityKey *SignedPublicKey `protobuf:"bytes,1,opt,name=identity_key,json=identityKey,proto3" json:"identity_key,omitempty"`
	// Pre-key MUST be signed by the identity key.
	PreKey *SignedPublicKey `protobuf:"bytes,2,opt,name=pre_key,json=preKey,proto3" json:"pre_key,omitempty"`
}

func (x *SignedPublicKeyBundle) Reset() {
	*x = SignedPublicKeyBundle{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SignedPublicKeyBundle) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SignedPublicKeyBundle) ProtoMessage() {}

func (x *SignedPublicKeyBundle) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SignedPublicKeyBundle.ProtoReflect.Descriptor instead.
func (*SignedPublicKeyBundle) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{5}
}

func (x *SignedPublicKeyBundle) GetIdentityKey() *SignedPublicKey {
	if x != nil {
		return x.IdentityKey
	}
	return nil
}

func (x *SignedPublicKeyBundle) GetPreKey() *SignedPublicKey {
	if x != nil {
		return x.PreKey
	}
	return nil
}

// PublicKey represents a generalized public key,
// defined as a union to support cryptographic algorithm agility.
type PublicKey struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Timestamp uint64     `protobuf:"varint,1,opt,name=timestamp,proto3" json:"timestamp,omitempty"`
	Signature *Signature `protobuf:"bytes,2,opt,name=signature,proto3,oneof" json:"signature,omitempty"`
	// Types that are assignable to Union:
	//
	//	*PublicKey_Secp256K1Uncompressed_
	Union isPublicKey_Union `protobuf_oneof:"union"`
}

func (x *PublicKey) Reset() {
	*x = PublicKey{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PublicKey) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PublicKey) ProtoMessage() {}

func (x *PublicKey) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PublicKey.ProtoReflect.Descriptor instead.
func (*PublicKey) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{6}
}

func (x *PublicKey) GetTimestamp() uint64 {
	if x != nil {
		return x.Timestamp
	}
	return 0
}

func (x *PublicKey) GetSignature() *Signature {
	if x != nil {
		return x.Signature
	}
	return nil
}

func (m *PublicKey) GetUnion() isPublicKey_Union {
	if m != nil {
		return m.Union
	}
	return nil
}

func (x *PublicKey) GetSecp256K1Uncompressed() *PublicKey_Secp256K1Uncompressed {
	if x, ok := x.GetUnion().(*PublicKey_Secp256K1Uncompressed_); ok {
		return x.Secp256K1Uncompressed
	}
	return nil
}

type isPublicKey_Union interface {
	isPublicKey_Union()
}

type PublicKey_Secp256K1Uncompressed_ struct {
	Secp256K1Uncompressed *PublicKey_Secp256K1Uncompressed `protobuf:"bytes,3,opt,name=secp256k1_uncompressed,json=secp256k1Uncompressed,proto3,oneof"`
}

func (*PublicKey_Secp256K1Uncompressed_) isPublicKey_Union() {}

// PublicKeyBundle packages the cryptographic keys associated with a wallet,
// both senders and recipients are identified by their key bundles.
type PublicKeyBundle struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Identity key MUST be signed by the wallet.
	IdentityKey *PublicKey `protobuf:"bytes,1,opt,name=identity_key,json=identityKey,proto3" json:"identity_key,omitempty"`
	// Pre-key MUST be signed by the identity key.
	PreKey *PublicKey `protobuf:"bytes,2,opt,name=pre_key,json=preKey,proto3" json:"pre_key,omitempty"`
}

func (x *PublicKeyBundle) Reset() {
	*x = PublicKeyBundle{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PublicKeyBundle) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PublicKeyBundle) ProtoMessage() {}

func (x *PublicKeyBundle) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PublicKeyBundle.ProtoReflect.Descriptor instead.
func (*PublicKeyBundle) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{7}
}

func (x *PublicKeyBundle) GetIdentityKey() *PublicKey {
	if x != nil {
		return x.IdentityKey
	}
	return nil
}

func (x *PublicKeyBundle) GetPreKey() *PublicKey {
	if x != nil {
		return x.PreKey
	}
	return nil
}

// EC: SECP256k1
type UnsignedPublicKey_Secp256K1Uncompressed struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// uncompressed point with prefix (0x04) [ P || X || Y ], 65 bytes
	Bytes []byte `protobuf:"bytes,1,opt,name=bytes,proto3" json:"bytes,omitempty"`
}

func (x *UnsignedPublicKey_Secp256K1Uncompressed) Reset() {
	*x = UnsignedPublicKey_Secp256K1Uncompressed{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UnsignedPublicKey_Secp256K1Uncompressed) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UnsignedPublicKey_Secp256K1Uncompressed) ProtoMessage() {}

func (x *UnsignedPublicKey_Secp256K1Uncompressed) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UnsignedPublicKey_Secp256K1Uncompressed.ProtoReflect.Descriptor instead.
func (*UnsignedPublicKey_Secp256K1Uncompressed) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{0, 0}
}

func (x *UnsignedPublicKey_Secp256K1Uncompressed) GetBytes() []byte {
	if x != nil {
		return x.Bytes
	}
	return nil
}

// The key bytes
type PublicKey_Secp256K1Uncompressed struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// uncompressed point with prefix (0x04) [ P || X || Y ], 65 bytes
	Bytes []byte `protobuf:"bytes,1,opt,name=bytes,proto3" json:"bytes,omitempty"`
}

func (x *PublicKey_Secp256K1Uncompressed) Reset() {
	*x = PublicKey_Secp256K1Uncompressed{}
	if protoimpl.UnsafeEnabled {
		mi := &file_message_contents_public_key_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PublicKey_Secp256K1Uncompressed) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PublicKey_Secp256K1Uncompressed) ProtoMessage() {}

func (x *PublicKey_Secp256K1Uncompressed) ProtoReflect() protoreflect.Message {
	mi := &file_message_contents_public_key_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PublicKey_Secp256K1Uncompressed.ProtoReflect.Descriptor instead.
func (*PublicKey_Secp256K1Uncompressed) Descriptor() ([]byte, []int) {
	return file_message_contents_public_key_proto_rawDescGZIP(), []int{6, 0}
}

func (x *PublicKey_Secp256K1Uncompressed) GetBytes() []byte {
	if x != nil {
		return x.Bytes
	}
	return nil
}

var File_message_contents_public_key_proto protoreflect.FileDescriptor

var file_message_contents_public_key_proto_rawDesc = []byte{
	0x0a, 0x21, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x2f, 0x70, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x5f, 0x6b, 0x65, 0x79, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x12, 0x15, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x1a, 0x1c, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x70, 0x72, 0x6f,
	0x6f, 0x66, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x20, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2f, 0x73, 0x69, 0x67, 0x6e, 0x61,
	0x74, 0x75, 0x72, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xe3, 0x01, 0x0a, 0x11, 0x55,
	0x6e, 0x73, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79,
	0x12, 0x1d, 0x0a, 0x0a, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x6e, 0x73, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x04, 0x52, 0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x4e, 0x73, 0x12,
	0x77, 0x0a, 0x16, 0x73, 0x65, 0x63, 0x70, 0x32, 0x35, 0x36, 0x6b, 0x31, 0x5f, 0x75, 0x6e, 0x63,
	0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x3e, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63,
	0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x55, 0x6e, 0x73, 0x69, 0x67, 0x6e, 0x65, 0x64,
	0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x2e, 0x53, 0x65, 0x63, 0x70, 0x32, 0x35,
	0x36, 0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64, 0x48,
	0x00, 0x52, 0x15, 0x73, 0x65, 0x63, 0x70, 0x32, 0x35, 0x36, 0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f,
	0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64, 0x1a, 0x2d, 0x0a, 0x15, 0x53, 0x65, 0x63, 0x70,
	0x32, 0x35, 0x36, 0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65,
	0x64, 0x12, 0x14, 0x0a, 0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c,
	0x52, 0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e,
	0x22, 0x6f, 0x0a, 0x11, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x4b, 0x65, 0x79, 0x56, 0x32, 0x12, 0x1b, 0x0a, 0x09, 0x6b, 0x65, 0x79, 0x5f, 0x62, 0x79, 0x74,
	0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x08, 0x6b, 0x65, 0x79, 0x42, 0x79, 0x74,
	0x65, 0x73, 0x12, 0x3d, 0x0a, 0x05, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x27, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x41, 0x73, 0x73, 0x6f, 0x63, 0x69,
	0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x52, 0x05, 0x70, 0x72, 0x6f, 0x6f,
	0x66, 0x22, 0x76, 0x0a, 0x19, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69,
	0x63, 0x4b, 0x65, 0x79, 0x52, 0x65, 0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x1b,
	0x0a, 0x09, 0x6b, 0x65, 0x79, 0x5f, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0c, 0x52, 0x08, 0x6b, 0x65, 0x79, 0x42, 0x79, 0x74, 0x65, 0x73, 0x12, 0x3c, 0x0a, 0x05, 0x70,
	0x72, 0x6f, 0x6f, 0x66, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x26, 0x2e, 0x78, 0x6d, 0x74,
	0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x2e, 0x52, 0x65, 0x76, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x50, 0x72, 0x6f,
	0x6f, 0x66, 0x52, 0x05, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x22, 0xc3, 0x01, 0x0a, 0x13, 0x53, 0x69,
	0x67, 0x6e, 0x65, 0x64, 0x53, 0x65, 0x6e, 0x64, 0x4b, 0x65, 0x79, 0x42, 0x75, 0x6e, 0x64, 0x6c,
	0x65, 0x12, 0x45, 0x0a, 0x08, 0x73, 0x65, 0x6e, 0x64, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x28, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e,
	0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x56, 0x32, 0x48, 0x00, 0x52,
	0x07, 0x73, 0x65, 0x6e, 0x64, 0x4b, 0x65, 0x79, 0x12, 0x5c, 0x0a, 0x10, 0x72, 0x65, 0x76, 0x6f,
	0x6b, 0x65, 0x64, 0x5f, 0x73, 0x65, 0x6e, 0x64, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x30, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x65,
	0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x52, 0x65, 0x76, 0x6f, 0x63, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x48, 0x00, 0x52, 0x0e, 0x72, 0x65, 0x76, 0x6f, 0x6b, 0x65, 0x64, 0x53,
	0x65, 0x6e, 0x64, 0x4b, 0x65, 0x79, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e, 0x22,
	0x6e, 0x0a, 0x0f, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b,
	0x65, 0x79, 0x12, 0x1b, 0x0a, 0x09, 0x6b, 0x65, 0x79, 0x5f, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x08, 0x6b, 0x65, 0x79, 0x42, 0x79, 0x74, 0x65, 0x73, 0x12,
	0x3e, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x61,
	0x74, 0x75, 0x72, 0x65, 0x52, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x22,
	0xa3, 0x01, 0x0a, 0x15, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x4b, 0x65, 0x79, 0x42, 0x75, 0x6e, 0x64, 0x6c, 0x65, 0x12, 0x49, 0x0a, 0x0c, 0x69, 0x64, 0x65,
	0x6e, 0x74, 0x69, 0x74, 0x79, 0x5f, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x26, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63,
	0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67, 0x6e, 0x65, 0x64, 0x50, 0x75,
	0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x52, 0x0b, 0x69, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74,
	0x79, 0x4b, 0x65, 0x79, 0x12, 0x3f, 0x0a, 0x07, 0x70, 0x72, 0x65, 0x5f, 0x6b, 0x65, 0x79, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x26, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69,
	0x67, 0x6e, 0x65, 0x64, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x52, 0x06, 0x70,
	0x72, 0x65, 0x4b, 0x65, 0x79, 0x22, 0xa5, 0x02, 0x0a, 0x09, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63,
	0x4b, 0x65, 0x79, 0x12, 0x1c, 0x0a, 0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x04, 0x52, 0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d,
	0x70, 0x12, 0x43, 0x0a, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x53, 0x69, 0x67,
	0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x48, 0x01, 0x52, 0x09, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74,
	0x75, 0x72, 0x65, 0x88, 0x01, 0x01, 0x12, 0x6f, 0x0a, 0x16, 0x73, 0x65, 0x63, 0x70, 0x32, 0x35,
	0x36, 0x6b, 0x31, 0x5f, 0x75, 0x6e, 0x63, 0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x36, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e, 0x50,
	0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x2e, 0x53, 0x65, 0x63, 0x70, 0x32, 0x35, 0x36,
	0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64, 0x48, 0x00,
	0x52, 0x15, 0x73, 0x65, 0x63, 0x70, 0x32, 0x35, 0x36, 0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f, 0x6d,
	0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64, 0x1a, 0x2d, 0x0a, 0x15, 0x53, 0x65, 0x63, 0x70, 0x32,
	0x35, 0x36, 0x6b, 0x31, 0x55, 0x6e, 0x63, 0x6f, 0x6d, 0x70, 0x72, 0x65, 0x73, 0x73, 0x65, 0x64,
	0x12, 0x14, 0x0a, 0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52,
	0x05, 0x62, 0x79, 0x74, 0x65, 0x73, 0x42, 0x07, 0x0a, 0x05, 0x75, 0x6e, 0x69, 0x6f, 0x6e, 0x42,
	0x0c, 0x0a, 0x0a, 0x5f, 0x73, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x22, 0x91, 0x01,
	0x0a, 0x0f, 0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x42, 0x75, 0x6e, 0x64, 0x6c,
	0x65, 0x12, 0x43, 0x0a, 0x0c, 0x69, 0x64, 0x65, 0x6e, 0x74, 0x69, 0x74, 0x79, 0x5f, 0x6b, 0x65,
	0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e,
	0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x52, 0x0b, 0x69, 0x64, 0x65, 0x6e, 0x74,
	0x69, 0x74, 0x79, 0x4b, 0x65, 0x79, 0x12, 0x39, 0x0a, 0x07, 0x70, 0x72, 0x65, 0x5f, 0x6b, 0x65,
	0x79, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x20, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x6d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x73, 0x2e,
	0x50, 0x75, 0x62, 0x6c, 0x69, 0x63, 0x4b, 0x65, 0x79, 0x52, 0x06, 0x70, 0x72, 0x65, 0x4b, 0x65,
	0x79, 0x42, 0x4f, 0x0a, 0x1f, 0x6f, 0x72, 0x67, 0x2e, 0x78, 0x6d, 0x74, 0x70, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x2e, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x74,
	0x65, 0x6e, 0x74, 0x73, 0x5a, 0x2c, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d,
	0x2f, 0x78, 0x6d, 0x74, 0x70, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x76, 0x33, 0x2f, 0x67,
	0x6f, 0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e,
	0x74, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_message_contents_public_key_proto_rawDescOnce sync.Once
	file_message_contents_public_key_proto_rawDescData = file_message_contents_public_key_proto_rawDesc
)

func file_message_contents_public_key_proto_rawDescGZIP() []byte {
	file_message_contents_public_key_proto_rawDescOnce.Do(func() {
		file_message_contents_public_key_proto_rawDescData = protoimpl.X.CompressGZIP(file_message_contents_public_key_proto_rawDescData)
	})
	return file_message_contents_public_key_proto_rawDescData
}

var file_message_contents_public_key_proto_msgTypes = make([]protoimpl.MessageInfo, 10)
var file_message_contents_public_key_proto_goTypes = []interface{}{
	(*UnsignedPublicKey)(nil),                       // 0: xmtp.message_contents.UnsignedPublicKey
	(*SignedPublicKeyV2)(nil),                       // 1: xmtp.message_contents.SignedPublicKeyV2
	(*SignedPublicKeyRevocation)(nil),               // 2: xmtp.message_contents.SignedPublicKeyRevocation
	(*SignedSendKeyBundle)(nil),                     // 3: xmtp.message_contents.SignedSendKeyBundle
	(*SignedPublicKey)(nil),                         // 4: xmtp.message_contents.SignedPublicKey
	(*SignedPublicKeyBundle)(nil),                   // 5: xmtp.message_contents.SignedPublicKeyBundle
	(*PublicKey)(nil),                               // 6: xmtp.message_contents.PublicKey
	(*PublicKeyBundle)(nil),                         // 7: xmtp.message_contents.PublicKeyBundle
	(*UnsignedPublicKey_Secp256K1Uncompressed)(nil), // 8: xmtp.message_contents.UnsignedPublicKey.Secp256k1Uncompressed
	(*PublicKey_Secp256K1Uncompressed)(nil),         // 9: xmtp.message_contents.PublicKey.Secp256k1Uncompressed
	(*AssociationProof)(nil),                        // 10: xmtp.message_contents.AssociationProof
	(*RevocationProof)(nil),                         // 11: xmtp.message_contents.RevocationProof
	(*Signature)(nil),                               // 12: xmtp.message_contents.Signature
}
var file_message_contents_public_key_proto_depIdxs = []int32{
	8,  // 0: xmtp.message_contents.UnsignedPublicKey.secp256k1_uncompressed:type_name -> xmtp.message_contents.UnsignedPublicKey.Secp256k1Uncompressed
	10, // 1: xmtp.message_contents.SignedPublicKeyV2.proof:type_name -> xmtp.message_contents.AssociationProof
	11, // 2: xmtp.message_contents.SignedPublicKeyRevocation.proof:type_name -> xmtp.message_contents.RevocationProof
	1,  // 3: xmtp.message_contents.SignedSendKeyBundle.send_key:type_name -> xmtp.message_contents.SignedPublicKeyV2
	2,  // 4: xmtp.message_contents.SignedSendKeyBundle.revoked_send_key:type_name -> xmtp.message_contents.SignedPublicKeyRevocation
	12, // 5: xmtp.message_contents.SignedPublicKey.signature:type_name -> xmtp.message_contents.Signature
	4,  // 6: xmtp.message_contents.SignedPublicKeyBundle.identity_key:type_name -> xmtp.message_contents.SignedPublicKey
	4,  // 7: xmtp.message_contents.SignedPublicKeyBundle.pre_key:type_name -> xmtp.message_contents.SignedPublicKey
	12, // 8: xmtp.message_contents.PublicKey.signature:type_name -> xmtp.message_contents.Signature
	9,  // 9: xmtp.message_contents.PublicKey.secp256k1_uncompressed:type_name -> xmtp.message_contents.PublicKey.Secp256k1Uncompressed
	6,  // 10: xmtp.message_contents.PublicKeyBundle.identity_key:type_name -> xmtp.message_contents.PublicKey
	6,  // 11: xmtp.message_contents.PublicKeyBundle.pre_key:type_name -> xmtp.message_contents.PublicKey
	12, // [12:12] is the sub-list for method output_type
	12, // [12:12] is the sub-list for method input_type
	12, // [12:12] is the sub-list for extension type_name
	12, // [12:12] is the sub-list for extension extendee
	0,  // [0:12] is the sub-list for field type_name
}

func init() { file_message_contents_public_key_proto_init() }
func file_message_contents_public_key_proto_init() {
	if File_message_contents_public_key_proto != nil {
		return
	}
	file_message_contents_proof_proto_init()
	file_message_contents_signature_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_message_contents_public_key_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UnsignedPublicKey); i {
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
		file_message_contents_public_key_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SignedPublicKeyV2); i {
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
		file_message_contents_public_key_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SignedPublicKeyRevocation); i {
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
		file_message_contents_public_key_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SignedSendKeyBundle); i {
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
		file_message_contents_public_key_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SignedPublicKey); i {
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
		file_message_contents_public_key_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SignedPublicKeyBundle); i {
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
		file_message_contents_public_key_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PublicKey); i {
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
		file_message_contents_public_key_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PublicKeyBundle); i {
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
		file_message_contents_public_key_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UnsignedPublicKey_Secp256K1Uncompressed); i {
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
		file_message_contents_public_key_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PublicKey_Secp256K1Uncompressed); i {
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
	file_message_contents_public_key_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*UnsignedPublicKey_Secp256K1Uncompressed_)(nil),
	}
	file_message_contents_public_key_proto_msgTypes[3].OneofWrappers = []interface{}{
		(*SignedSendKeyBundle_SendKey)(nil),
		(*SignedSendKeyBundle_RevokedSendKey)(nil),
	}
	file_message_contents_public_key_proto_msgTypes[6].OneofWrappers = []interface{}{
		(*PublicKey_Secp256K1Uncompressed_)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_message_contents_public_key_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   10,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_message_contents_public_key_proto_goTypes,
		DependencyIndexes: file_message_contents_public_key_proto_depIdxs,
		MessageInfos:      file_message_contents_public_key_proto_msgTypes,
	}.Build()
	File_message_contents_public_key_proto = out.File
	file_message_contents_public_key_proto_rawDesc = nil
	file_message_contents_public_key_proto_goTypes = nil
	file_message_contents_public_key_proto_depIdxs = nil
}
