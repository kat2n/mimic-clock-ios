import XCTest
@testable import MimicClock

class AddWorldClockViewModelTests: XCTestCase {

  var it: AddWorldClockViewModel!

  override func setUp() {
    it = AddWorldClockViewModel()
  }

  override func tearDown() {
  }

  func testEqual() {
    XCTAssertEqual(it.data[0], "aaa")
  }

  func testNotEqual() {
    XCTAssertNotEqual(it.data[0], "bbb")
  }

}
