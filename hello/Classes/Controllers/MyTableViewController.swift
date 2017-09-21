//
//  MyTableViewController.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/21.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "myTableCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = "わたしだ"
        cell.levelLabel.text = "lv.5"
        cell.faceImageView.image = UIImage(named: "avatar")
        return cell
    }

 

}
