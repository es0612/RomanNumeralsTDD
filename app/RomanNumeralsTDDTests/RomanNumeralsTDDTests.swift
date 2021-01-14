import XCTest
@testable import RomanNumeralsTDD

class RomanNumeralsTDDTests: XCTestCase {
    private var converter: RomanNumeralsConverter!

    override func setUp() {
        converter = DefaultRomanNumeralsConverter()
    }

    func testZero() {
        XCTAssertEqual(converter.convert(0), "")
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

    func testFive() {
        XCTAssertEqual(converter.convert(5), "V")
    }

    func testSix() {
        XCTAssertEqual(converter.convert(6), "VⅠ")
    }

    func testSeven() {
        XCTAssertEqual(converter.convert(7), "VⅠⅠ")
    }

    func testEight() {
        XCTAssertEqual(converter.convert(8), "VⅠⅠⅠ")
    }

    func testNine() {
        XCTAssertEqual(converter.convert(9), "ⅠX")
    }

    func testTen() {
        XCTAssertEqual(converter.convert(10), "X")
    }

    func testEleven() {
        XCTAssertEqual(converter.convert(11), "XⅠ")
    }

    func testTwelve() {
        XCTAssertEqual(converter.convert(12), "XⅠⅠ")
    }

    func testThirteen() {
        XCTAssertEqual(converter.convert(13), "XⅠⅠⅠ")
    }
}
