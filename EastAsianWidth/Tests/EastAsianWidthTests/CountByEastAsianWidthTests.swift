//
// CountByEastAsianWidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

//https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianAmbiguousTests.swift
final class CountByEastAsianWidthTests: XCTestCase {
    func testCountByEastAsianWidth() {
        // default config
        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(), 10)
        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(), 5)
        XCTAssertEqual("あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 15)
        XCTAssertEqual("ABCｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(), 8)
        //includes East Asian Ambiguous character.
        XCTAssertEqual("ABCｱｲｳｴｵ¡".unicodeScalars.countByEastAsianWidth(), 9)

        // custom config
        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 2, markEastAsianAmbiguousAsFullwidth: true), 10)
        XCTAssertEqual("ABCｱｲｳｴｵ¡".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 2, markEastAsianAmbiguousAsFullwidth: true), 10)

        XCTAssertEqual("あいうえお".unicodeScalars.countByEastAsianWidth(halfwidthAs: 2, fullwidthAs: 4), 20)
        XCTAssertEqual("aiueo".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 3), 5)
        XCTAssertEqual("あいうえおｱｲｳｴｵ".unicodeScalars.countByEastAsianWidth(halfwidthAs: 1, fullwidthAs: 3), 20)
    }

    static var allTests = [
        ("testCountByEastAsianWidth", testCountByEastAsianWidth)
    ]
}
