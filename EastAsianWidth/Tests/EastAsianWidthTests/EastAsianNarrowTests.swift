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
        EastAsianNarrowEdgeUnicodeScalar.forEach(AssertEastAsianNarrow)
    }

    func testNonEastAsianNarrowCharacters() {
        AssertNotEastAsianNarrow("こんにちわ")
        AssertNotEastAsianNarrow("안녕하세요")
        AssertNotEastAsianNarrow("你好")
    }

    func testContainsEastAsianNarrow() {
        XCTAssertTrue("!?".containsEastAsianNarrowCharacters)
        XCTAssertFalse("！？".containsEastAsianNarrowCharacters)
        XCTAssertFalse("あいうえお".containsEastAsianNarrowCharacters)
    }
}
