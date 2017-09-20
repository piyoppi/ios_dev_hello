//
//  Counter.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/20.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import Foundation

class Counter {
    private var count: Int
    
    init() {
        self.count = 0
    }
    
    func countUp() {
        self.count += 1
    }
    
    func current() -> Int {
        return self.count
    }
}
