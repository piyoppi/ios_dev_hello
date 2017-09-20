//
//  ViewController.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/20.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    var counter = Counter()
    
    @IBAction func increaseButtonTapped(_ sender: Any) {
        self.counter.countUp()
        self.countLabel.text = String(self.counter.current())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countLabel.text = String(self.counter.current())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

