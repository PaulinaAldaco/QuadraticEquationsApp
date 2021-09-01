//
//  CalculatorTests.swift
//  QuadraticEquationsAppTests
//
//  Created by user193919 on 9/1/21.
//

import XCTest
@testable import QuadraticEquationsApp

class CalculatorTests: XCTestCase {

    let calculator = Calculator()
    
    func testTwoRoots() throws {

        let input = Equation(a: 1, b: 0, c: -1)
        
        let result = calculator.solveEquation(equation: input)
        
        let expectedSolution = Calculator.QuadraticSolution.Real(rootOne: 1, rootTwo: -1)
        
        // Compare result with expected outcome
        XCTAssertEqual(result.rootOne, expectedSolution.rootOne)
        XCTAssertEqual(result.rootTwo, expectedSolution.rootTwo)
    }
    
    func testOneRoot() throws {

        let input = Equation(a: 1, b: 1, c: 0.25)
        
        let result = calculator.solveEquation(equation: input)
        
        let expectedSolution = Calculator.QuadraticSolution.Real(rootOne: -0.5, rootTwo: -0.5)
        
        // Compare result with expected outcome
        XCTAssertEqual(result.rootOne, expectedSolution.rootOne)
        XCTAssertEqual(result.rootTwo, expectedSolution.rootTwo)
    }
    
    func testComplexRoot() throws {

        let input = Equation(a: 1, b: 1, c: 0.25)
        
        let result = calculator.solveEquation(equation: input)
        
        let expectedSolution = Calculator.QuadraticSolution.Real(rootOne: -0.5, rootTwo: -0.5)
        
        // Compare result with expected outcome
        XCTAssertEqual(result.rootOne, expectedSolution.rootOne)
        XCTAssertEqual(result.rootTwo, expectedSolution.rootTwo)
    }


}
