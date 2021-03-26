//
// UnicodeScalarView+Extension.swift
// He Wu
//
// Copyright © 2020 He Wu. All rights reserved.
//

import Foundation

public extension String.UnicodeScalarView {
    func countByEastAsianWidth(halfwidthAs: Int = 1,
                                      fullwidthAs: Int = 2,
                                      markEastAsianAmbiguousAsFullwidth: Bool = false) -> Int {

        if markEastAsianAmbiguousAsFullwidth {
            return reduce(into: 0) { res, scalar in
                res += scalar.isFullwidthOrAmbiguous ? fullwidthAs : halfwidthAs
            }
        }

        return reduce(into: 0) { res, scalar in
            res += scalar.isFullwidth ? fullwidthAs : halfwidthAs
        }
    }
}
