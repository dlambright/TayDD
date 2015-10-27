//
//  TayDDUITests.swift
//  TayDDUITests
//
//  Created by Charlie Buckets on 10/5/15.
//  Copyright © 2015 ChalieBuckets. All rights reserved.
//

import XCTest

class TayDDUITests: XCTestCase {
   
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Label output shoud be "happy"
    func testTayButtonOutput(){
        let app = XCUIApplication()
        
        app.buttons["D"].tap()
        app.buttons["DEE"].tap()
        app.buttons["Tay"].tap()
        XCTAssert(app.staticTexts["Happy"].exists)
    }
    // Label output should be "Success"
    func testDeeButton() {
        let app = XCUIApplication()
     
        app.buttons["Tay"].tap()
        app.buttons["D"].tap()
        app.buttons["DEE"].tap()
        XCTAssert(app.staticTexts["Success"].exists)
        
    }
    
    // Value of label should be "I luv Swift"
    func testDButtonOutput(){
        
        
    }
    
    
    
    
}
