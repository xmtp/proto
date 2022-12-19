//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_contents/content.proto

package org.xmtp.proto.message.contents;

@kotlin.jvm.JvmName("-initializecontentTypeId")
public inline fun contentTypeId(block: org.xmtp.proto.message.contents.ContentTypeIdKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.Content.ContentTypeId =
  org.xmtp.proto.message.contents.ContentTypeIdKt.Dsl._create(org.xmtp.proto.message.contents.Content.ContentTypeId.newBuilder()).apply { block() }._build()
public object ContentTypeIdKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.contents.Content.ContentTypeId.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.contents.Content.ContentTypeId.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.contents.Content.ContentTypeId = _builder.build()

    /**
     * <pre>
     * authority governing this content type
     * </pre>
     *
     * <code>string authority_id = 1;</code>
     */
    public var authorityId: kotlin.String
      @JvmName("getAuthorityId")
      get() = _builder.getAuthorityId()
      @JvmName("setAuthorityId")
      set(value) {
        _builder.setAuthorityId(value)
      }
    /**
     * <pre>
     * authority governing this content type
     * </pre>
     *
     * <code>string authority_id = 1;</code>
     */
    public fun clearAuthorityId() {
      _builder.clearAuthorityId()
    }

    /**
     * <pre>
     * type identifier
     * </pre>
     *
     * <code>string type_id = 2;</code>
     */
    public var typeId: kotlin.String
      @JvmName("getTypeId")
      get() = _builder.getTypeId()
      @JvmName("setTypeId")
      set(value) {
        _builder.setTypeId(value)
      }
    /**
     * <pre>
     * type identifier
     * </pre>
     *
     * <code>string type_id = 2;</code>
     */
    public fun clearTypeId() {
      _builder.clearTypeId()
    }

    /**
     * <pre>
     * major version of the type
     * </pre>
     *
     * <code>uint32 version_major = 3;</code>
     */
    public var versionMajor: kotlin.Int
      @JvmName("getVersionMajor")
      get() = _builder.getVersionMajor()
      @JvmName("setVersionMajor")
      set(value) {
        _builder.setVersionMajor(value)
      }
    /**
     * <pre>
     * major version of the type
     * </pre>
     *
     * <code>uint32 version_major = 3;</code>
     */
    public fun clearVersionMajor() {
      _builder.clearVersionMajor()
    }

    /**
     * <pre>
     * minor version of the type
     * </pre>
     *
     * <code>uint32 version_minor = 4;</code>
     */
    public var versionMinor: kotlin.Int
      @JvmName("getVersionMinor")
      get() = _builder.getVersionMinor()
      @JvmName("setVersionMinor")
      set(value) {
        _builder.setVersionMinor(value)
      }
    /**
     * <pre>
     * minor version of the type
     * </pre>
     *
     * <code>uint32 version_minor = 4;</code>
     */
    public fun clearVersionMinor() {
      _builder.clearVersionMinor()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.contents.Content.ContentTypeId.copy(block: org.xmtp.proto.message.contents.ContentTypeIdKt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.Content.ContentTypeId =
  org.xmtp.proto.message.contents.ContentTypeIdKt.Dsl._create(this.toBuilder()).apply { block() }._build()
