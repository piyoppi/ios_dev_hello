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
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        let countButton = app.buttons["ふえる"]
        let countLabel = app.staticTexts["countLabel"]
        
        XCTAssertEqual("0", countLabel.label)
        countButton.tap()
        XCTAssertEqual("1", countLabel.label)
    }
    
}
