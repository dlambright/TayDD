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
   
    func testTouchButtons() {
        let app = XCUIApplication()
        
//        let button = app.staticTexts["Tay"]
//        let exists:NSPredicate = NSPredicate(format:"exists==1")
//        self.expectationForPredicate(exists, evaluatedWithObject: button, handler: nil)
//        self.waitForExpectationsWithTimeout(30, handler: nil)

        
        app.buttons["Tay"].tap()
        app.buttons["D"].tap()
        app.buttons["DEE"].tap()
        app.staticTexts["Success"].doubleTap()        
    }
    
    func testTayButtonOutput(){
        
        let app = XCUIApplication()
        let tayButton = app.buttons["Tay"]
        tayButton.tap()
        app.buttons["D"].tap()
        app.buttons["DEE"].tap()
        tayButton.tap()
        
        let iHateSwiftStaticText = app.staticTexts["Happy"]
        iHateSwiftStaticText.doubleTap()
    }
    
    // Value of label should be "I luv Swift"
//    func testDButtonOutput(){
//        
//    }
    
    
    
}
