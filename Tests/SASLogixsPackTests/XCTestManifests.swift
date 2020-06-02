import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SASLogixsPackTests.allTests),
    ]
}
#endif
