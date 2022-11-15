import XCTest
@testable import XMTPProto

final class protoTests: XCTestCase {
    func testTypesAreAvailable() throws {
        // This is just a bare minimum test to make sure the types are generated
        XCTAssertEqual(Xmtp_MessageApi_V1_SortDirection.unspecified.rawValue, 0)
    }
}
