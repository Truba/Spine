import XCTest
@testable import Spine

final class SpineTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Spine().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
