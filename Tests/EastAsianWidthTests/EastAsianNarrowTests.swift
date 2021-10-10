//
// EastAsianNarrowTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianNarrowTests.swift
class EastAsianNarrowTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNarrowEdgeUnicodeScalar.forEach(testScalarEastAsianNarrow(_:))
    }

    func testNonEastAsianNarrowCharacters() {
        testStringNotEastAsianNarrow("こんにちわ")
        testStringNotEastAsianNarrow("안녕하세요")
        testStringNotEastAsianNarrow("你好")
    }

    func testContainsEastAsianNarrow() {
        XCTAssertTrue("!?".containsEastAsianNarrowCharacters)
        XCTAssertFalse("！？".containsEastAsianNarrowCharacters)
        XCTAssertFalse("あいうえお".containsEastAsianNarrowCharacters)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonEastAsianNarrowCharacters", testNonEastAsianNarrowCharacters),
        ("testContainsEastAsianNarrow", testContainsEastAsianNarrow)
    ]
}
