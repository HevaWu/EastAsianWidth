//
// EastAsianWideTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianWideTests.swift
class EastAsianWideTests: XCTestCase {
    func testEdgeCases() {
        EastAsianWideEdgeUnicodeScalar.forEach(testScalarEastAsianWide)
    }

    func testNonEastAsianWideCharacters() {
        testStringNotEastAsianWide("Hello")
    }

    func testContainsEastAsianWide() {
        XCTAssertFalse("ABC".containsEastAsianWideCharacters)
        XCTAssertFalse("ＡＢＣ".containsEastAsianWideCharacters)
        XCTAssertTrue("こんにちわ".containsEastAsianWideCharacters)
        XCTAssertTrue("你好".containsEastAsianWideCharacters)
        XCTAssertTrue("안녕하세요".containsEastAsianWideCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianWideCharacters", testNonEastAsianWideCharacters),
        ("testContainsEastAsianWide", testContainsEastAsianWide)
    ]
}
