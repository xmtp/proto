package org.xmtp.proto.message

import org.xmtp.proto.mls.message.contents.Content.DeviceSyncKind

import kotlin.test.Test
import kotlin.test.assertEquals

class ProtoTest {
    @Test fun testTypesAreAvailable() {
        assertEquals(2, DeviceSyncKind.DEVICE_SYNC_KIND_CONSENT_VALUE)
    }
}