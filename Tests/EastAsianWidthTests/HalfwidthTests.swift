//
// HalfwidthTests.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/TestUtils.swift
class HalfwidthTests: XCTestCase {
    func testEdgeCases() {
        EastAsianNarrowEdgeUnicodeScalar.forEach(testScalarHalfwidth)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(testScalarHalfwidth)
        EastAsianNarrowEdgeUnicodeScalar.forEach(testScalarHalfwidthOrAmbiguous)
        EastAsianHalfwidthEdgeUnicodeScalar.forEach(testScalarHalfwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(testScalarHalfwidthOrAmbiguous)
    }

    func testNonHalfwidthCharacters() {
        testStringNotHalfwidth("あいうえお")
        testStringNotHalfwidth("ＡＢＣＤＥ")
        testStringNotHalfwidth("０１２３４")
        testStringNotHalfwidth("！＂＃＄％｟｠")
        testStringNotHalfwidth("你好")
    }

    func testContainsHalfwidth() {
        XCTAssertFalse("¡".containsHalfwidthCharacters)
        XCTAssertTrue("ABCDEabcde".containsHalfwidthCharacters)
        XCTAssertFalse("ＡＢＣＤＥ".containsHalfwidthCharacters)
        XCTAssertFalse("こんにちわ".containsHalfwidthCharacters)
        XCTAssertFalse("你好".containsHalfwidthCharacters)
        XCTAssertFalse("안녕하세요".containsHalfwidthCharacters)

        XCTAssertTrue("¡".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertTrue("ABCDEabcde".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("ＡＢＣＤＥ".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("こんにちわ".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("你好".containsHalfwidthOrAmbiguousCharacters)
        XCTAssertFalse("안녕하세요".containsHalfwidthOrAmbiguousCharacters)
    }
    
    func testHalfWidthPunctuation() {
        testStringHalfwidth("｡｢｣､")
    }
    
    func testHalfwidthDigit() {
        testStringHalfwidth("1234567890")
    }
    
    func testHalfwidthEnglishLetters() {
        testStringHalfwidth("abcdefghijklmnopqrstuvwxyz")
        testStringHalfwidth("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    }

    func testHalfwidthKatakana() {
        testStringHalfwidth("ｱｲｳｴｵ")
        testStringHalfwidth("ｶｷｸｹｺ")
        testStringHalfwidth("ｻｼｽｾｿ")
        testStringHalfwidth("ﾀﾁﾂﾃﾄ")
        testStringHalfwidth("ﾅﾆﾇﾈﾉ")
        testStringHalfwidth("ﾊﾋﾌﾍﾎ")
        testStringHalfwidth("ﾏﾐﾑﾒﾓ")
        testStringHalfwidth("ﾔﾕﾖ")
        testStringHalfwidth("ﾜｦﾝ")
        testStringHalfwidth("ｶﾞｷﾞｸﾞｹﾞｺﾞ")
        testStringHalfwidth("ｻﾞｼﾞｽﾞｾﾞｿﾞ")
        testStringHalfwidth("ﾀﾞﾁﾞﾂﾞﾃﾞﾄﾞ")
        testStringHalfwidth("ﾊﾞﾋﾞﾌﾞﾍﾞﾎﾞ")
        testStringHalfwidth("ﾊﾟﾋﾟﾌﾟﾍﾟﾎﾟ")
    }

    func testHalfwidthHangul() {
        testStringHalfwidth("ﾡﾢﾣﾤﾥﾦﾧﾨﾩﾪﾫﾬﾭﾮﾯﾰﾱﾲﾳﾴﾵﾶﾷﾸﾹﾺﾻﾼﾽﾾￂￃￄￅￆￇￊￋￌￍￎￏￒￓￔￕￖￗￚￛￜ")
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonHalfwidthCharacters", testNonHalfwidthCharacters),
        ("testContainsHalfwidth", testContainsHalfwidth),
        ("testHalfWidthPunctuation", testHalfWidthPunctuation),
        ("testHalfwidthDigit", testHalfwidthDigit),
        ("testHalfwidthEnglishLetters", testHalfwidthEnglishLetters),
        ("testHalfwidthKatakana", testHalfwidthKatakana),
        ("testHalfwidthHangul", testHalfwidthHangul)
    ]
}
