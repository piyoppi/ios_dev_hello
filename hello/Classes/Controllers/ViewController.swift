//
//  ViewController.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/20.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = Counter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let count = self.counter.current()
        print(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

