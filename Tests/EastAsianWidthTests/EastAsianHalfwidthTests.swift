//
// EastAsianHalfwidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianHalfwidthTests.swift
class EastAsianHalfwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(testScalarEastAsianHalfwidth)
    }

    func testNonEastAsianHalfwidthCharacters() {
        testStringNotEastAsianHalfwidth("Hello")
        testStringNotEastAsianHalfwidth("こんにちわ")
        testStringNotEastAsianHalfwidth("안녕하세요")
        testStringNotEastAsianHalfwidth("你好")
    }

    func testContainsEastAsianHalfwidth() {
        XCTAssertTrue("₩".containsEastAsianHalfwidthCharacters)
        XCTAssertTrue("100 ₩".containsEastAsianHalfwidthCharacters)
        XCTAssertFalse("あいうえお".containsEastAsianHalfwidthCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianHalfwidthCharacters", testNonEastAsianHalfwidthCharacters),
        ("testContainsEastAsianHalfwidth", testContainsEastAsianHalfwidth)
    ]
}
