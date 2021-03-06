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
        // self.performSegue(withIdentifier: "goNext", sender: nil)
        
        Hoge.fetchHoges() { hoges in
            dump(hoges)
        }
        
        Character.fetchCharacters() { characters in
            dump(characters)
        }
//      ↓こいつの省略形がこれ↑
//      Hoge.fetchHoges( handler: {(hoges: Array<Hoge>) -> Void in
//          dump(hoges)
//      })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindToMainScr(sender: UIStoryboardSegue) {
        print("Mainにもどります")
    }
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        let nextStoryboard = UIStoryboard(name: "Next", bundle: nil)
        let nextViewController = nextStoryboard.instantiateViewController(withIdentifier: "nextScene")
        self.present(nextViewController, animated: true, completion: nil)
    }
}

