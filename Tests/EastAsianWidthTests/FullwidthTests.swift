//
// FullwidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/FullwidthTests.swift
class FullwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianWideEdgeUnicodeScalar.forEach(AssertFullwidth)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertFullwidth)
        EastAsianWideEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertFullwidthOrAmbiguous)
    }

    func testNonFullwidthCharacters() {
        AssertNotFullwidth("Hello")
        AssertNotFullwidthOrAmbiguous("Hello")
    }

    func testContainsFullwidth() {
        XCTAssertFalse("¡".containsFullwidthCharacters)
        XCTAssertFalse("ABC".containsFullwidthCharacters)
        XCTAssertTrue("ＡＢＣ".containsFullwidthCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthCharacters)
        XCTAssertTrue("你好".containsFullwidthCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthCharacters)

        XCTAssertTrue("¡".containsFullwidthOrAmbiguousCharacters)
        XCTAssertFalse("ABC".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("ＡＢＣ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("你好".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthOrAmbiguousCharacters)
    }

    func testFullwidthHalfwidthCount() {
       XCTAssertEqual("ABC".fullwidthHalfwidthCount, 3)
       XCTAssertEqual("(^o^)".fullwidthHalfwidthCount, 5)
       XCTAssertEqual("あいうえお".fullwidthHalfwidthCount, 10)
       XCTAssertEqual("漢字".fullwidthHalfwidthCount, 4)
       XCTAssertEqual("mix混合".fullwidthHalfwidthCount, 7)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonFullwidthCharacters", testNonFullwidthCharacters),
        ("testContainsFullwidth", testContainsFullwidth),
        ("testFullwidthHalfwidthCount", testFullwidthHalfwidthCount)
    ]
}
