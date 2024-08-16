//
//  ModeTest.swift
//  BuildVersionsTests
//
//  Created by BS00880 on 16/8/24.
//

import XCTest
@testable import BuildVersions

final class ModeTest: XCTestCase {
    
    func testAddStuff() {
        let math = MathStuff()
        let result = math.addNumbers(x: 1, y: 2)
        XCTAssertEqual(result, 3)
    }
    func testSubtractionStuff() {
        let math = MathStuff()
        let result = math.subtractNumbers(x: 2, y: 1)
        XCTAssertEqual(result, 1)
    }
    func testMultiplyStuff() {
        let math = MathStuff()
        let result = math.multiplyNumbers(x: 2, y: 1)
        XCTAssertEqual(result, 2)
    }
    func testDivideStuff() {
        let math = MathStuff()
        let result = math.divideNumbers(x: 2, y: 1)
        XCTAssertEqual(result, 2)
    }
}
