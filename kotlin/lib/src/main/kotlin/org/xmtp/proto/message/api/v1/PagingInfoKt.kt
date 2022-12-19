//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_api/v1/message_api.proto

package org.xmtp.proto.message.api.v1;

@kotlin.jvm.JvmName("-initializepagingInfo")
public inline fun pagingInfo(block: org.xmtp.proto.message.api.v1.PagingInfoKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo =
  org.xmtp.proto.message.api.v1.PagingInfoKt.Dsl._create(org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo.newBuilder()).apply { block() }._build()
public object PagingInfoKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo = _builder.build()

    /**
     * <pre>
     * Note: this is a uint32, while go-waku's pageSize is a uint64
     * </pre>
     *
     * <code>uint32 limit = 1;</code>
     */
    public var limit: kotlin.Int
      @JvmName("getLimit")
      get() = _builder.getLimit()
      @JvmName("setLimit")
      set(value) {
        _builder.setLimit(value)
      }
    /**
     * <pre>
     * Note: this is a uint32, while go-waku's pageSize is a uint64
     * </pre>
     *
     * <code>uint32 limit = 1;</code>
     */
    public fun clearLimit() {
      _builder.clearLimit()
    }

    /**
     * <code>.xmtp.message_api.v1.Cursor cursor = 2;</code>
     */
    public var cursor: org.xmtp.proto.message.api.v1.MessageApiOuterClass.Cursor
      @JvmName("getCursor")
      get() = _builder.getCursor()
      @JvmName("setCursor")
      set(value) {
        _builder.setCursor(value)
      }
    /**
     * <code>.xmtp.message_api.v1.Cursor cursor = 2;</code>
     */
    public fun clearCursor() {
      _builder.clearCursor()
    }
    /**
     * <code>.xmtp.message_api.v1.Cursor cursor = 2;</code>
     * @return Whether the cursor field is set.
     */
    public fun hasCursor(): kotlin.Boolean {
      return _builder.hasCursor()
    }

    /**
     * <code>.xmtp.message_api.v1.SortDirection direction = 3;</code>
     */
    public var direction: org.xmtp.proto.message.api.v1.MessageApiOuterClass.SortDirection
      @JvmName("getDirection")
      get() = _builder.getDirection()
      @JvmName("setDirection")
      set(value) {
        _builder.setDirection(value)
      }
    /**
     * <code>.xmtp.message_api.v1.SortDirection direction = 3;</code>
     */
    public fun clearDirection() {
      _builder.clearDirection()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo.copy(block: org.xmtp.proto.message.api.v1.PagingInfoKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfo =
  org.xmtp.proto.message.api.v1.PagingInfoKt.Dsl._create(this.toBuilder()).apply { block() }._build()

public val org.xmtp.proto.message.api.v1.MessageApiOuterClass.PagingInfoOrBuilder.cursorOrNull: org.xmtp.proto.message.api.v1.MessageApiOuterClass.Cursor?
  get() = if (hasCursor()) getCursor() else null
