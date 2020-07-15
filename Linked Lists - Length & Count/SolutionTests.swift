import XCTest
// XCTest Spec Example:
// TODO: replace with your own tests (TDD), these are just how-to examples to get you started

class SolutionTest: XCTestCase {
    static var allTests = [
        ("testLength", testLength),
        ("testCountWithNil", testCountWithNil),
        ("testCountWith3ItemList", testCountWith3ItemList),
        ("testCountWithLargeList", testCountWithLargeList),
    ]

    let list:Node? = buildOneTwoThree()
    let largeList:Node? = buildListFromArray([8, 4, 1, 2, 9, 4, 2, 8, 2])

    func testLength() {
        XCTAssertEqual(length(nil), 0)
        XCTAssertEqual(length(Node(1)), 1)
        XCTAssertEqual(length(list), 3)
        XCTAssertEqual(length(largeList), 9)
    }
    
    func testCountWithNil() {
        XCTAssertEqual(count(nil, 1), 0)
    }
    
    func testCountWith3ItemList() {
        XCTAssertEqual(count(list, 1), 1)
        XCTAssertEqual(count(list, 2), 1)
        XCTAssertEqual(count(list, 3), 1)
    }
    
    func testCountWithLargeList() {
        XCTAssertEqual(count(largeList, 1), 1)
        XCTAssertEqual(count(largeList, 2), 3)
        XCTAssertEqual(count(largeList, 3), 0)
        XCTAssertEqual(count(largeList, 4), 2)
        XCTAssertEqual(count(largeList, 5), 0)
        XCTAssertEqual(count(largeList, 8), 2)
        XCTAssertEqual(count(largeList, 9), 1)
    }
}

XCTMain([
    testCase(SolutionTest.allTests)
])