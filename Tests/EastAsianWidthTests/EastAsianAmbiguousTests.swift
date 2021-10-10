//
// EastAsianAmbiguousTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/TestUtils.swift
final class EastAsianAmbiguousTests: XCTestCase {
    func testEdgeCases() {
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(testScalarEastAsianAmbiguous(_:))
    }

    func testNonEastAsianAmbiguousCharacters() {
        testStringNotEastAsianAmbiguous("Hello")
        testStringNotEastAsianAmbiguous("こんにちわ")
        testStringNotEastAsianAmbiguous("안녕하세요")
        testStringNotEastAsianAmbiguous("你好")
    }

    func testContainsEastAsianAmbiguous() {
        XCTAssertTrue("¡".containsEastAsianAmbiguousCharacters) // Not `i`, but `¡`.
        // 0x16b
        XCTAssertTrue("ū".containsEastAsianAmbiguousCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianAmbiguousCharacters", testNonEastAsianAmbiguousCharacters),
        ("testContainsEastAsianAmbiguous", testContainsEastAsianAmbiguous)
    ]
}
