import XCTest
@testable import RomanNumeralsTDD

class RomanNumeralsTDDTests: XCTestCase {

    func testOne() {
        let converter: RomanNumeralsConverter = DefaultRomanNumeralsConverter()
        XCTAssertEqual(converter.convert(1), "Ⅰ")
    }

    func testTwo() {
        let converter: RomanNumeralsConverter = DefaultRomanNumeralsConverter()
        XCTAssertEqual(converter.convert(2), "ⅠⅠ")
    }
}
