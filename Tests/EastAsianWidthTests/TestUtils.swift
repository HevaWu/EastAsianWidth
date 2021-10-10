//
// TestUtils.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import XCTest
import EastAsianWidth

// https://github.com/ukitaka/EastAsianWidth.swift/blob/master/Tests/EastAsianWidthTests/TestUtils.swift
// MARK: - EastAsianAmbiguous
func testStringEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianAmbiguous)
}

func testScalarEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianAmbiguous)
}

func testStringNotEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianAmbiguous)
}

func testScalarNotEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianAmbiguous)
}

// MARK: - EastAsianNeutral
func testStringEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianNeutral)
}

func testScalarEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNeutral)
}

func testStringNotEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianNeutral)
}

func testScalarNotEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNeutral)
}

// MARK: - EastAsianHalfwidth
func testStringEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianHalfwidth)
}

func testScalarEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianHalfwidth)
}

func testStringNotEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianHalfwidth)
}

func testScalarNotEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianHalfwidth)
}

// MARK: - EastAsianFullwidth
func testStringEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianFullwidth)
}

func testScalarEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianFullwidth)
}

func testStringNotEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianFullwidth)
}

func testScalarNotEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianFullwidth)
}

// MARK: - EastAsianNarrow
func testStringEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianNarrow)
}

func testScalarEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNarrow)
}

func testStringNotEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianNarrow)
}

func testScalarNotEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNarrow)
}

// MARK: - EastAsianWide
func testStringEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(testScalarEastAsianWide)
}

func testScalarEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianWide)
}

func testStringNotEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotEastAsianWide)
}

func testScalarNotEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianWide)
}

// MARK: - Fullwidth
func testStringFullwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarFullwidth)
}

func testScalarFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isFullwidth)
}

func testStringNotFullwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotFullwidth)
}

func testScalarNotFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isFullwidth)
}

func testStringFullwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarFullwidthOrAmbiguous)
}

func testScalarFullwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isFullwidthOrAmbiguous)
}

func testStringNotFullwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotFullwidthOrAmbiguous)
}

func testScalarNotFullwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isFullwidthOrAmbiguous)
}

// MARK: - Halfwidth
func testStringHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarHalfwidth)
}

func testScalarHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isHalfwidth)
}

func testStringNotHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotHalfwidth)
}

func testScalarNotHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isHalfwidth)
}

func testStringHalfwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarHalfwidthOrAmbiguous)
}

func testScalarHalfwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isHalfwidthOrAmbiguous)
}

func testStringNotHalfwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(testScalarNotHalfwidthOrAmbiguous)
}

func testScalarNotHalfwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isHalfwidthOrAmbiguous)
}
