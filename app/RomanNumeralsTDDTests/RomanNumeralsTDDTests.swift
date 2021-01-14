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
        XCTAssertEqual(converter.convert(1), "I")
    }

    func testTwo() {
        XCTAssertEqual(converter.convert(2), "II")
    }

    func testThree() {
        XCTAssertEqual(converter.convert(3), "III")
    }

    func testFour() {
        XCTAssertEqual(converter.convert(4), "IV")
    }

    func testFive() {
        XCTAssertEqual(converter.convert(5), "V")
    }

    func testSix() {
        XCTAssertEqual(converter.convert(6), "VI")
    }

    func testSeven() {
        XCTAssertEqual(converter.convert(7), "VII")
    }

    func testEight() {
        XCTAssertEqual(converter.convert(8), "VIII")
    }

    func testNine() {
        XCTAssertEqual(converter.convert(9), "IX")
    }

    func testTen() {
        XCTAssertEqual(converter.convert(10), "X")
    }

    func testEleven() {
        XCTAssertEqual(converter.convert(11), "XI")
    }

    func testTwelve() {
        XCTAssertEqual(converter.convert(12), "XII")
    }

    func testThirteen() {
        XCTAssertEqual(converter.convert(13), "XIII")
    }

    func testFourteen() {
        XCTAssertEqual(converter.convert(14), "XIV")
    }

    func testFifteen() {
        XCTAssertEqual(converter.convert(15), "XV")
    }

    func testSixteen() {
        XCTAssertEqual(converter.convert(16), "XVI")
    }

    func testSeventeen() {
        XCTAssertEqual(converter.convert(17), "XVII")
    }

    func testEighteen() {
        XCTAssertEqual(converter.convert(18), "XVIII")
    }

    func testNineteen() {
        XCTAssertEqual(converter.convert(19), "XIX")
    }

    func testTwinty() {
        XCTAssertEqual(converter.convert(20), "XX")
    }

    func testTwentyOne() {
        XCTAssertEqual(converter.convert(21), "XXI")
    }

    func testThirtyThree() {
        XCTAssertEqual(converter.convert(33), "XXXIII")
    }
    
    func testForty() {
        XCTAssertEqual(converter.convert(40), "XL")
    }

    func testFifty() {
        XCTAssertEqual(converter.convert(50), "L")
    }

    func testEightyNine() {
        XCTAssertEqual(converter.convert(89), "LXXXIX")
    }

    func testNinety() {
        XCTAssertEqual(converter.convert(90), "XC")
    }

    func testNinetyNine() {
        XCTAssertEqual(converter.convert(99), "XCIX")
    }

    func testOneHundred() {
        XCTAssertEqual(converter.convert(100), "C")
    }

    func testFourHundred() {
        XCTAssertEqual(converter.convert(400), "CD")
    }

    func testFourHundredTwentySix() {
        XCTAssertEqual(converter.convert(426), "CDXXVI")
    }

    func testFiveHundred() {
        XCTAssertEqual(converter.convert(500), "D")
    }

    func testNineHundred() {
        XCTAssertEqual(converter.convert(900), "CM")
    }

    func testOneThousand() {
        XCTAssertEqual(converter.convert(1000), "M")
    }

    func testOneThousandNineHundredNintyNine() {
        XCTAssertEqual(converter.convert(1888), "MDCCCLXXXVIII")
    }
}
