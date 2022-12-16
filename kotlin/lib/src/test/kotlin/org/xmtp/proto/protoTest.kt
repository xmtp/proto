package org.xmtp.proto

import kotlin.test.Test
import kotlin.test.assertEquals

class ProtoTest {
    @Test fun testTypesAreAvailable() {
        val classUnderTest = Library()
        assertEquals(message.api.v1.MessageApiOuterClass.SortDirection.SORT_DIRECTION_UNSPECIFIED.rawValue, 0)
    }
}