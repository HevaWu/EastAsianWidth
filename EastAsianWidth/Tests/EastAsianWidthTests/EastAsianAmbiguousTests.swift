//
// EastAsianAmbiguousTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianAmbiguousTests.swift
final class EastAsianAmbiguousTests: XCTestCase {
    func testEdgeCases() {
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(AssertEastAsianAmbiguous)
    }

    func testNonEastAsianAmbiguousCharacters() {
        AssertNotEastAsianAmbiguous("Hello")
        AssertNotEastAsianAmbiguous("こんにちわ")
        AssertNotEastAsianAmbiguous("안녕하세요")
        AssertNotEastAsianAmbiguous("你好")
    }

    func testContainsEastAsianAmbiguous() {
        XCTAssertTrue("¡".containsEastAsianAmbiguousCharacters) // Not `i`, but `¡`.
        XCTAssertFalse("Hello".containsEastAsianAmbiguousCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianAmbiguousCharacters", testNonEastAsianAmbiguousCharacters),
        ("testContainsEastAsianAmbiguous", testContainsEastAsianAmbiguous)
    ]
}
