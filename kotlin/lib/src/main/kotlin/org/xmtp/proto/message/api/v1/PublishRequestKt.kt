//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_api/v1/message_api.proto

package org.xmtp.proto.message.api.v1;

@kotlin.jvm.JvmName("-initializepublishRequest")
public inline fun publishRequest(block: org.xmtp.proto.message.api.v1.PublishRequestKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest =
  org.xmtp.proto.message.api.v1.PublishRequestKt.Dsl._create(org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.newBuilder()).apply { block() }._build()
public object PublishRequestKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest = _builder.build()

    /**
     * An uninstantiable, behaviorless type to represent the field in
     * generics.
     */
    @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
    public class EnvelopesProxy private constructor() : com.google.protobuf.kotlin.DslProxy()
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     */
     public val envelopes: com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>
      @kotlin.jvm.JvmSynthetic
      get() = com.google.protobuf.kotlin.DslList(
        _builder.getEnvelopesList()
      )
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     * @param value The envelopes to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addEnvelopes")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.add(value: org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope) {
      _builder.addEnvelopes(value)
    }
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     * @param value The envelopes to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignEnvelopes")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.plusAssign(value: org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope) {
      add(value)
    }
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     * @param values The envelopes to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addAllEnvelopes")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.addAll(values: kotlin.collections.Iterable<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>) {
      _builder.addAllEnvelopes(values)
    }
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     * @param values The envelopes to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignAllEnvelopes")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.plusAssign(values: kotlin.collections.Iterable<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>) {
      addAll(values)
    }
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     * @param index The index to set the value at.
     * @param value The envelopes to set.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("setEnvelopes")
    public operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.set(index: kotlin.Int, value: org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope) {
      _builder.setEnvelopes(index, value)
    }
    /**
     * <code>repeated .xmtp.message_api.v1.Envelope envelopes = 1;</code>
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("clearEnvelopes")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope, EnvelopesProxy>.clear() {
      _builder.clearEnvelopes()
    }

  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.copy(block: org.xmtp.proto.message.api.v1.PublishRequestKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest =
  org.xmtp.proto.message.api.v1.PublishRequestKt.Dsl._create(this.toBuilder()).apply { block() }._build()

