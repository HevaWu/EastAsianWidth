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
func AssertEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianAmbiguous)
}

func AssertEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianAmbiguous)
}

func AssertNotEastAsianAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianAmbiguous)
}

func AssertNotEastAsianAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianAmbiguous)
}

// MARK: - EastAsianNeutral
func AssertEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianNeutral)
}

func AssertEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNeutral)
}

func AssertNotEastAsianNeutral(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianNeutral)
}

func AssertNotEastAsianNeutral(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNeutral)
}

// MARK: - EastAsianHalfwidth
func AssertEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianHalfwidth)
}

func AssertEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianHalfwidth)
}

func AssertNotEastAsianHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianHalfwidth)
}

func AssertNotEastAsianHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianHalfwidth)
}

// MARK: - EastAsianFullwidth
func AssertEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianFullwidth)
}

func AssertEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianFullwidth)
}

func AssertNotEastAsianFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianFullwidth)
}

func AssertNotEastAsianFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianFullwidth)
}

// MARK: - EastAsianNarrow
func AssertEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianNarrow)
}

func AssertEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianNarrow)
}

func AssertNotEastAsianNarrow(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianNarrow)
}

func AssertNotEastAsianNarrow(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianNarrow)
}

// MARK: - EastAsianWide
func AssertEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(AssertEastAsianWide)
}

func AssertEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isEastAsianWide)
}

func AssertNotEastAsianWide(_ string: String) {
    string.unicodeScalars.forEach(AssertNotEastAsianWide)
}

func AssertNotEastAsianWide(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isEastAsianWide)
}

// MARK: - Fullwidth
func AssertFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertFullwidth)
}

func AssertFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isFullwidth)
}

func AssertNotFullwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotFullwidth)
}

func AssertNotFullwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isFullwidth)
}

func AssertFullwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertFullwidthOrAmbiguous)
}

func AssertFullwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isFullwidthOrAmbiguous)
}

func AssertNotFullwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertNotFullwidthOrAmbiguous)
}

func AssertNotFullwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isFullwidthOrAmbiguous)
}

// MARK: - Halfwidth
func AssertHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertHalfwidth)
}

func AssertHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isHalfwidth)
}

func AssertNotHalfwidth(_ string: String) {
    string.unicodeScalars.forEach(AssertNotHalfwidth)
}

func AssertNotHalfwidth(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isHalfwidth)
}

func AssertHalfwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertHalfwidthOrAmbiguous)
}

func AssertHalfwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertTrue(unicodeScalar.isHalfwidthOrAmbiguous)
}

func AssertNotHalfwidthOrAmbiguous(_ string: String) {
    string.unicodeScalars.forEach(AssertNotHalfwidthOrAmbiguous)
}

func AssertNotHalfwidthOrAmbiguous(_ unicodeScalar: UnicodeScalar) {
    XCTAssertFalse(unicodeScalar.isHalfwidthOrAmbiguous)
}
