//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_api/v1/message_api.proto

package org.xmtp.proto.message.api.v1;

@kotlin.jvm.JvmName("-initializeindexCursor")
public inline fun indexCursor(block: org.xmtp.proto.message.api.v1.IndexCursorKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor =
  org.xmtp.proto.message.api.v1.IndexCursorKt.Dsl._create(org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor.newBuilder()).apply { block() }._build()
public object IndexCursorKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor = _builder.build()

    /**
     * <code>bytes digest = 1;</code>
     */
    public var digest: com.google.protobuf.ByteString
      @JvmName("getDigest")
      get() = _builder.getDigest()
      @JvmName("setDigest")
      set(value) {
        _builder.setDigest(value)
      }
    /**
     * <code>bytes digest = 1;</code>
     */
    public fun clearDigest() {
      _builder.clearDigest()
    }

    /**
     * <code>uint64 sender_time_ns = 2;</code>
     */
    public var senderTimeNs: kotlin.Long
      @JvmName("getSenderTimeNs")
      get() = _builder.getSenderTimeNs()
      @JvmName("setSenderTimeNs")
      set(value) {
        _builder.setSenderTimeNs(value)
      }
    /**
     * <code>uint64 sender_time_ns = 2;</code>
     */
    public fun clearSenderTimeNs() {
      _builder.clearSenderTimeNs()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor.copy(block: org.xmtp.proto.message.api.v1.IndexCursorKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.IndexCursor =
  org.xmtp.proto.message.api.v1.IndexCursorKt.Dsl._create(this.toBuilder()).apply { block() }._build()

