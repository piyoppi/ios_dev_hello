//
//  helloTests.swift
//  helloTests
//
//  Created by shohei.ogata on 2017/09/20.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import XCTest
@testable import hello

class helloTests: XCTestCase {
    
    var counter = Counter()
    
    override func setUp() {
        super.setUp()
        self.counter = Counter()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCountUp() {
        self.counter.countUp()
        XCTAssertEqual(1, self.counter.current())
        
        self.counter.countUp()
        XCTAssertEqual(2, self.counter.current())
    }
    
    func testInitialCount() {
        XCTAssertEqual(0, self.counter.current())
    }
    
}
