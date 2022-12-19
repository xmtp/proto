//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_contents/message.proto

package org.xmtp.proto.message.contents;

@kotlin.jvm.JvmName("-initializemessageV1")
public inline fun messageV1(block: org.xmtp.proto.message.contents.MessageV1Kt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.MessageOuterClass.MessageV1 =
  org.xmtp.proto.message.contents.MessageV1Kt.Dsl._create(org.xmtp.proto.message.contents.MessageOuterClass.MessageV1.newBuilder()).apply { block() }._build()
public object MessageV1Kt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.contents.MessageOuterClass.MessageV1.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.contents.MessageOuterClass.MessageV1.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.contents.MessageOuterClass.MessageV1 = _builder.build()

    /**
     * <pre>
     * encapsulates encoded MessageHeaderV1
     * </pre>
     *
     * <code>bytes header_bytes = 1;</code>
     */
    public var headerBytes: com.google.protobuf.ByteString
      @JvmName("getHeaderBytes")
      get() = _builder.getHeaderBytes()
      @JvmName("setHeaderBytes")
      set(value) {
        _builder.setHeaderBytes(value)
      }
    /**
     * <pre>
     * encapsulates encoded MessageHeaderV1
     * </pre>
     *
     * <code>bytes header_bytes = 1;</code>
     */
    public fun clearHeaderBytes() {
      _builder.clearHeaderBytes()
    }

    /**
     * <pre>
     * Ciphertext.payload MUST contain encrypted EncodedContent
     * </pre>
     *
     * <code>.xmtp.message_contents.Ciphertext ciphertext = 2;</code>
     */
    public var ciphertext: org.xmtp.proto.message.contents.CiphertextOuterClass.Ciphertext
      @JvmName("getCiphertext")
      get() = _builder.getCiphertext()
      @JvmName("setCiphertext")
      set(value) {
        _builder.setCiphertext(value)
      }
    /**
     * <pre>
     * Ciphertext.payload MUST contain encrypted EncodedContent
     * </pre>
     *
     * <code>.xmtp.message_contents.Ciphertext ciphertext = 2;</code>
     */
    public fun clearCiphertext() {
      _builder.clearCiphertext()
    }
    /**
     * <pre>
     * Ciphertext.payload MUST contain encrypted EncodedContent
     * </pre>
     *
     * <code>.xmtp.message_contents.Ciphertext ciphertext = 2;</code>
     * @return Whether the ciphertext field is set.
     */
    public fun hasCiphertext(): kotlin.Boolean {
      return _builder.hasCiphertext()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.contents.MessageOuterClass.MessageV1.copy(block: org.xmtp.proto.message.contents.MessageV1Kt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.MessageOuterClass.MessageV1 =
  org.xmtp.proto.message.contents.MessageV1Kt.Dsl._create(this.toBuilder()).apply { block() }._build()

public val org.xmtp.proto.message.contents.MessageOuterClass.MessageV1OrBuilder.ciphertextOrNull: org.xmtp.proto.message.contents.CiphertextOuterClass.Ciphertext?
  get() = if (hasCiphertext()) getCiphertext() else null
