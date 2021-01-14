import XCTest
@testable import RomanNumeralsTDD

class RomanNumeralsTDDTests: XCTestCase {
    private var converter: RomanNumeralsConverter!

    override func setUp() {
        converter = DefaultRomanNumeralsConverter()
    }

    func testOne() {
        XCTAssertEqual(converter.convert(1), "Ⅰ")
    }

    func testTwo() {
        XCTAssertEqual(converter.convert(2), "ⅠⅠ")
    }

    func testThree() {
        XCTAssertEqual(converter.convert(3), "ⅠⅠⅠ")
    }

    func testFour() {
        XCTAssertEqual(converter.convert(4), "ⅠV")
    }
}
