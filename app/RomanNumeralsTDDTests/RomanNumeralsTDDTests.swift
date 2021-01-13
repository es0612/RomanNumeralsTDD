//
//  RomanNumeralsTDDTests.swift
//  RomanNumeralsTDDTests
//
//  Created by harami on 2021/01/13.
//

import XCTest
@testable import RomanNumeralsTDD

class RomanNumeralsTDDTests: XCTestCase {

    func testOne() {
        let converter: RomanNumeralsConverter = DefaultRomanNumeralsConverter()
        XCTAssertEqual(converter.convert(1), "Ⅰ")
    }


}
