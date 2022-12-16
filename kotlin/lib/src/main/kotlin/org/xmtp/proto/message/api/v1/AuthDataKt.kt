//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_api/v1/authn.proto

package org.xmtp.proto.message.api.v1;

@kotlin.jvm.JvmName("-initializeauthData")
public inline fun authData(block: org.xmtp.proto.message.api.v1.AuthDataKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.Authn.AuthData =
  org.xmtp.proto.message.api.v1.AuthDataKt.Dsl._create(org.xmtp.proto.message.api.v1.Authn.AuthData.newBuilder()).apply { block() }._build()
public object AuthDataKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.api.v1.Authn.AuthData.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.api.v1.Authn.AuthData.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.api.v1.Authn.AuthData = _builder.build()

    /**
     * <pre>
     * address of the wallet
     * </pre>
     *
     * <code>string wallet_addr = 1;</code>
     */
    public var walletAddr: kotlin.String
      @JvmName("getWalletAddr")
      get() = _builder.getWalletAddr()
      @JvmName("setWalletAddr")
      set(value) {
        _builder.setWalletAddr(value)
      }
    /**
     * <pre>
     * address of the wallet
     * </pre>
     *
     * <code>string wallet_addr = 1;</code>
     */
    public fun clearWalletAddr() {
      _builder.clearWalletAddr()
    }

    /**
     * <pre>
     * time when the token was generated/signed 
     * </pre>
     *
     * <code>uint64 created_ns = 2;</code>
     */
    public var createdNs: kotlin.Long
      @JvmName("getCreatedNs")
      get() = _builder.getCreatedNs()
      @JvmName("setCreatedNs")
      set(value) {
        _builder.setCreatedNs(value)
      }
    /**
     * <pre>
     * time when the token was generated/signed 
     * </pre>
     *
     * <code>uint64 created_ns = 2;</code>
     */
    public fun clearCreatedNs() {
      _builder.clearCreatedNs()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.api.v1.Authn.AuthData.copy(block: org.xmtp.proto.message.api.v1.AuthDataKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.Authn.AuthData =
  org.xmtp.proto.message.api.v1.AuthDataKt.Dsl._create(this.toBuilder()).apply { block() }._build()

