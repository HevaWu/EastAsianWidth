//
// EastAsianNeutralTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/EastAsianNeutralTests.swift
class EastAsianNeutralTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNeutralEdgeUnicodeScalar.forEach(AssertEastAsianNeutral)
    }

    func testNonEastAsianNeutralCharacters() {
        AssertNotEastAsianNeutral("Hello")
        AssertNotEastAsianNeutral("こんにちわ")
        AssertNotEastAsianNeutral("안녕하세요")
        AssertNotEastAsianNeutral("你好")
    }

    func testContainsEastAsianNeutral() {
        XCTAssertTrue("ÿ".containsEastAsianNeutralCharacters)
        XCTAssertFalse("ABC".containsEastAsianNeutralCharacters)
        XCTAssertFalse("ＡＢＣ".containsEastAsianNeutralCharacters)
        XCTAssertFalse("あいうえお".containsEastAsianNeutralCharacters)
    }
}
