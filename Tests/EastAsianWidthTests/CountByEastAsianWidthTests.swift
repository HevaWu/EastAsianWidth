//
// CountByEastAsianWidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/TestUtils.swift
final class CountByEastAsianWidthTests: XCTestCase {
    func testCountByEastAsianWidth() {
        XCTAssertEqual("你好".unicodeScalars.countByEastAsianWidth(), 4)
        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(), 10)
        XCTAssertEqual("アイウエオ".unicodeScalars.countByEastAsianWidth(), 10)
        XCTAssertEqual("あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 15)
        XCTAssertEqual("アイウエオあいうえお".unicodeScalars.countByEastAsianWidth(), 20)

        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(), 5)
        XCTAssertEqual("ABCDEFGｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 12)
        XCTAssertEqual("ABCｱｲｳｴｵabcdefg".unicodeScalars.countByEastAsianWidth(),15)
        XCTAssertEqual("你好ABCD".unicodeScalars.countByEastAsianWidth(),8)

        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(halfwidthAs: 2, fullwidthAs: 4), 10)
        XCTAssertEqual("ABCDEFGｱｲｳｴｵ你好".unicodeScalars.countByEastAsianWidth(halfwidthAs: 2, fullwidthAs: 3), 30)
        XCTAssertEqual("ABCｱｲｳｴｵabcdefg你好".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 3), 21)
        XCTAssertEqual("你好ABCDE".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 4), 13)
    }

    static var allTests = [
        ("testCountByEastAsianWidth", testCountByEastAsianWidth)
    ]
}
