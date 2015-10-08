//
//  TayDDTests.swift
//  TayDDTests
//
//  Created by Charlie Buckets on 10/5/15.
//  Copyright © 2015 ChalieBuckets. All rights reserved.
//

import XCTest
@testable import TayDD

class TayDDTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    func testColorDistances(){
        let testModel = Model()
        let red =  UIColor(red: 255/255,  green: 0/255, blue: 0/255, alpha:1);
        let blue = UIColor(red: 0/255,  green: 0/255, blue: 255/255, alpha:1);
        let blue1 = UIColor(red: 196/255, green: 206/255, blue: 211/255, alpha: 1)
        let blue2 = UIColor(red: 253/255, green: 185/255, blue: 39/255, alpha: 1)
        var colorDistance: Float
        

        // colorDistance should be 287.729034
        colorDistance = testModel.getDistanceBetweenColors(blue, color2: blue1)
        XCTAssert(colorDistance > 287 && colorDistance < 288)

        // colorDistance should be 380.644196
        colorDistance = testModel.getDistanceBetweenColors(blue, color2: blue2)
        XCTAssert(colorDistance > 380 && colorDistance < 381)
        
        // colorDistance should be 300.729126
        colorDistance = testModel.getDistanceBetweenColors(red, color2: blue1)
        XCTAssert(colorDistance > 300 && colorDistance < 301)
        
        // colorDistance should be 189.076706
        colorDistance = testModel.getDistanceBetweenColors(red, color2: blue2)
        XCTAssert(colorDistance > 189 && colorDistance < 190)
        
        // colorDistance should be 360.624451
        colorDistance = testModel.getDistanceBetweenColors(red, color2: blue)
        XCTAssert(colorDistance > 375 && colorDistance < 361)
        
        // colorDistance should be 360.624451
        colorDistance = testModel.getDistanceBetweenColors(red, color2: blue)
        XCTAssertFalse(colorDistance < 10)
    }
    
}
