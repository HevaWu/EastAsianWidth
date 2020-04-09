import XCTest

#if !canImport(ObjectiveC)
    public func allTests() -> [XCTestCaseEntry] {
        return [
            testCase(EastAsianAmbiguousTests.allTests),
            testCase(EastAsianFullwidthTests.allTests),
            testCase(EastAsianHalfwidthTests.allTests),
            testCase(EastAsianNarrowTests.allTests),
            testCase(EastAsianNeutralTests.allTests),
            testCase(EastAsianWideTests.allTests),
            testCase(FullwidthTests.allTests),
            testCase(HalfwidthTests.allTests),
            testCase(CountByEastAsianWidthTests.allTests)
        ]
    }
#endif
