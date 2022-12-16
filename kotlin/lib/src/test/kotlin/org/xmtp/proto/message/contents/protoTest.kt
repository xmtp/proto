package org.xmtp.proto.message.contents

import kotlin.test.Test
import kotlin.test.assertEquals
import org.xmtp.proto.message.contents.*

class ProtoTest {
    @Test fun testTypesAreAvailable() {
        val message = MessageV2Kt()
        assertEquals(false, message.hasV2())
    }
}