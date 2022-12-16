import org.junit.Test
import org.junit.Assert.*

@RunWith(JUnit4::class)
class ProtoTest {
    @Test
    fun testTypesAreAvailable() {
        assertEquals(org.xmtp.proto.message.api.v1.MessageApiOuterClass.SortDirection.SORT_DIRECTION_UNSPECIFIED.rawValue, 0)
    }
}