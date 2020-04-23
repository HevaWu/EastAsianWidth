//
// UnicodeScalar+Extension.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import Foundation

public extension UnicodeScalar {
    /// Recommendations:
    /// When mapping Unicode to East Asian legacy character encodings
    /// - Wide Unicode characters always map to fullwidth characters.
    /// - Narrow (and neutral) Unicode characters always map to halfwidth characters.
    /// - Halfwidth Unicode characters always map to halfwidth characters.
    /// - Ambiguous Unicode characters always map to fullwidth characters.
    ///
    /// https://unicode.org/reports/tr11/#Recommendations

    public var isFullwidth: Bool {
        return isEastAsianFullwidth
            || isEastAsianWide
    }

    public var isFullwidthOrAmbiguous: Bool {
        return isFullwidth
            || isEastAsianAmbiguous
    }

    public var isHalfwidth: Bool {
        return isEastAsianHalfwidth
            || isEastAsianNarrow
            || isEastAsianNeutral
    }

    public var isHalfwidthOrAmbiguous: Bool {
        return isHalfwidth
            || isEastAsianAmbiguous
    }
}
