import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EastAsianWidthTests.allTests),
    ]
}
#endif
