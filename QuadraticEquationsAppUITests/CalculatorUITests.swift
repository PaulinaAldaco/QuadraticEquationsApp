//
//  CalculatorUITests.swift
//  QuadraticEquationsAppUITests
//
//  Created by user193919 on 9/3/21.
//

import XCTest

class CalculatorUITests: XCTestCase {

    func testShowRoots() throws {
        // Launch application
        let app = XCUIApplication()
        app.launch()
        
        // Define text fields
        let aTextField = app.textFields["aTextField"]
        let bTextField = app.textFields["bTextField"]
        let cTextField = app.textFields["cTextField"]
        let rootOneTextField = app.textFields["rootOneTextField"]
        let rootTwoTextField = app.textFields["rootTwoTextField"]
        
        // Simulate input
        aTextField.tap()
        aTextField.typeText("1")
        bTextField.tap()
        bTextField.typeText("2")
        cTextField.tap()
        cTextField.typeText("3")
        
        // Solve
        app.buttons["solve"].tap()
        
        // Compare text field contents with expected outcome
        XCTAssertEqual(rootOneTextField.value as! String, "-1.0 + 1.4142135i")
        XCTAssertEqual(rootTwoTextField.value as! String, "-1.0 - 1.4142135i")
    }

}
