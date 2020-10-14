//
// EastAsianFullwidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianFullwidthTests.swift
class EastAsianFullwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertEastAsianFullwidth)
    }

    func testNonEastAsianFullwidthCharacters() {
        AssertNotEastAsianFullwidth("Hello")
        AssertNotEastAsianFullwidth("こんにちわ")
        AssertNotEastAsianFullwidth("안녕하세요")
        AssertNotEastAsianFullwidth("你好")
    }

    func testContainsAsianFullwidth() {
        XCTAssertTrue("ＡＢＣ".containsEastAsianFullwidthCharacters) // Fullwidth alphabet
        XCTAssertFalse("ABC".containsEastAsianFullwidthCharacters) // Halfwidth alphabet
        XCTAssertTrue("　".containsEastAsianFullwidthCharacters) // Fullwidth space
        XCTAssertFalse(" ".containsEastAsianFullwidthCharacters) // Halfwidth space
        XCTAssertTrue("こんにちわ　世界".containsEastAsianFullwidthCharacters)
        XCTAssertFalse("こんにちわ 世界".containsEastAsianFullwidthCharacters)
        XCTAssertTrue("ＨＥＬＬＯＷＯＲＬＤ".containsEastAsianFullwidthCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianFullwidthCharacters", testNonEastAsianFullwidthCharacters),
        ("testContainsAsianFullwidth", testContainsAsianFullwidth)
    ]
}
