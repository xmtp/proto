//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: message_contents/private_key.proto

package org.xmtp.proto.message.contents;

@kotlin.jvm.JvmName("-initializeprivateKeyBundleV2")
public inline fun privateKeyBundleV2(block: org.xmtp.proto.message.contents.PrivateKeyBundleV2Kt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2 =
  org.xmtp.proto.message.contents.PrivateKeyBundleV2Kt.Dsl._create(org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2.newBuilder()).apply { block() }._build()
public object PrivateKeyBundleV2Kt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2 = _builder.build()

    /**
     * <code>.xmtp.message_contents.SignedPrivateKey identity_key = 1;</code>
     */
    public var identityKey: org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey
      @JvmName("getIdentityKey")
      get() = _builder.getIdentityKey()
      @JvmName("setIdentityKey")
      set(value) {
        _builder.setIdentityKey(value)
      }
    /**
     * <code>.xmtp.message_contents.SignedPrivateKey identity_key = 1;</code>
     */
    public fun clearIdentityKey() {
      _builder.clearIdentityKey()
    }
    /**
     * <code>.xmtp.message_contents.SignedPrivateKey identity_key = 1;</code>
     * @return Whether the identityKey field is set.
     */
    public fun hasIdentityKey(): kotlin.Boolean {
      return _builder.hasIdentityKey()
    }

    /**
     * An uninstantiable, behaviorless type to represent the field in
     * generics.
     */
    @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
    public class PreKeysProxy private constructor() : com.google.protobuf.kotlin.DslProxy()
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     */
     public val preKeys: com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>
      @kotlin.jvm.JvmSynthetic
      get() = com.google.protobuf.kotlin.DslList(
        _builder.getPreKeysList()
      )
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     * @param value The preKeys to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addPreKeys")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.add(value: org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey) {
      _builder.addPreKeys(value)
    }
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     * @param value The preKeys to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignPreKeys")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.plusAssign(value: org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey) {
      add(value)
    }
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     * @param values The preKeys to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addAllPreKeys")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.addAll(values: kotlin.collections.Iterable<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey>) {
      _builder.addAllPreKeys(values)
    }
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     * @param values The preKeys to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignAllPreKeys")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.plusAssign(values: kotlin.collections.Iterable<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey>) {
      addAll(values)
    }
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     * @param index The index to set the value at.
     * @param value The preKeys to set.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("setPreKeys")
    public operator fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.set(index: kotlin.Int, value: org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey) {
      _builder.setPreKeys(index, value)
    }
    /**
     * <pre>
     * all the known pre-keys, newer keys first,
     * </pre>
     *
     * <code>repeated .xmtp.message_contents.SignedPrivateKey pre_keys = 2;</code>
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("clearPreKeys")
    public fun com.google.protobuf.kotlin.DslList<org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey, PreKeysProxy>.clear() {
      _builder.clearPreKeys()
    }

  }
}
@kotlin.jvm.JvmSynthetic
public inline fun org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2.copy(block: org.xmtp.proto.message.contents.PrivateKeyBundleV2Kt.Dsl.() -> kotlin.Unit): org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2 =
  org.xmtp.proto.message.contents.PrivateKeyBundleV2Kt.Dsl._create(this.toBuilder()).apply { block() }._build()

public val org.xmtp.proto.message.contents.PrivateKeyOuterClass.PrivateKeyBundleV2OrBuilder.identityKeyOrNull: org.xmtp.proto.message.contents.PrivateKeyOuterClass.SignedPrivateKey?
  get() = if (hasIdentityKey()) getIdentityKey() else null
