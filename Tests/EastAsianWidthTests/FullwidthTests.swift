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
        EastAsianWideEdgeUnicodeScalar.forEach(testScalarFullwidth)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(testScalarFullwidth)
        EastAsianWideEdgeUnicodeScalar.forEach(testScalarFullwidthOrAmbiguous)
        EastAsianFullwidthEdgeUnicodeScalar.forEach(testScalarFullwidthOrAmbiguous)
        EastAsianAmbiguousEdgeUnicodeScalar.forEach(testScalarFullwidthOrAmbiguous)
    }

    func testNonFullwidthCharacters() {
        testStringNotFullwidth("ABCDE")
        testStringNotFullwidth("｡｢｣､")
        testStringNotFullwidth("12345")
        testStringNotFullwidth("ｱｲｳｴｵ")
        testStringNotFullwidth("ﾡﾢﾣﾤ")
    }

    func testContainsFullwidth() {
        XCTAssertFalse("¡".containsFullwidthCharacters)
        XCTAssertFalse("ABCDEabcde".containsFullwidthCharacters)
        XCTAssertTrue("ＡＢＣＤＥ".containsFullwidthCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthCharacters)
        XCTAssertTrue("你好".containsFullwidthCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthCharacters)

        XCTAssertTrue("¡".containsFullwidthOrAmbiguousCharacters)
        XCTAssertFalse("ABCDEabcde".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("ＡＢＣＤＥ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("こんにちわ".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("你好".containsFullwidthOrAmbiguousCharacters)
        XCTAssertTrue("안녕하세요".containsFullwidthOrAmbiguousCharacters)
    }

    func testFullWidthKatakana() {
        testStringFullwidth("あいうえお")
        testStringFullwidth("かきくけこ")
        testStringFullwidth("さしすせそ")
        testStringFullwidth("たちつてと")
        testStringFullwidth("なにぬねの")
        testStringFullwidth("はひふへほ")
        testStringFullwidth("まみむめも")
        testStringFullwidth("やゆよ")
        testStringFullwidth("わをん")
    }
    
    func testFullWidthChinese() {
        testStringFullwidth(
                            "蛰伏如斯，回归事、可容拿捏？宁万籁、更无红紫，尚疑窥月。褪尽金辉玄鬓迥，其间痛楚何堪窃！怕流莺、犹道慕清喉，施簧舌。历进退，谙冷热。高远意，千般别。笑风多露重，未由分说。且向疏桐轻振翼，不教高洁成孤洁。即清寒、正好入秋声，传千阕。"
        )
    }
    
    func testFullwidthHalfwidthCount() {
       XCTAssertEqual("ABCDE".fullwidthHalfwidthCount, 5)
       XCTAssertEqual("ꉂ(σ▰˃̶̀ꇴ˂̶́)σ✧".fullwidthHalfwidthCount, 16)
       XCTAssertEqual("あいうえお".fullwidthHalfwidthCount, 10)
       XCTAssertEqual("你好".fullwidthHalfwidthCount, 4)
       XCTAssertEqual("mix混合".fullwidthHalfwidthCount, 7)
    }

    static var allTests = [
        ("testEdgeCases", testEdgeCases),
        ("testNonFullwidthCharacters", testNonFullwidthCharacters),
        ("testContainsFullwidth", testContainsFullwidth),
        ("testFullWidthKatakana", testFullWidthKatakana),
        ("testFullWidthChinese", testFullWidthChinese),
        ("testFullwidthHalfwidthCount", testFullwidthHalfwidthCount)
    ]
}
