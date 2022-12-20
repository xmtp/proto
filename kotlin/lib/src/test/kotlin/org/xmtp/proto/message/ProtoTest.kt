package org.xmtp.proto.message

import org.xmtp.proto.message.api.v1.MessageApiOuterClass.SortDirection
import kotlin.test.Test
import kotlin.test.assertEquals

class ProtoTest {
    @Test fun testTypesAreAvailable() {
        assertEquals(1, SortDirection.SORT_DIRECTION_ASCENDING_VALUE)
    }
}