//
//  helloUITests.swift
//  helloUITests
//
//  Created by shohei.ogata on 2017/09/20.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import XCTest

class helloUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()      
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
