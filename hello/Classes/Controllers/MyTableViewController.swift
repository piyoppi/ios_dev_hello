//
//  MyTableViewController.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/21.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import UIKit
import SDWebImage


class MyTableViewController: UITableViewController {

    var characters = [Character]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "myTableCell")
        
        Character.fetchCharacters() { characters in
            self.characters = characters
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath) as! TableViewCell
        updateCell(cell: cell, indexPath: indexPath)

        return cell
    }

    private func updateCell(cell: TableViewCell, indexPath: IndexPath) {
        cell.nameLabel.text = self.characters[indexPath.row].name
        cell.levelLabel.text = String(self.characters[indexPath.row].level)
        cell.faceImageView.sd_setImage(with: URL(string: self.characters[indexPath.row].imageURL), placeholderImage: UIImage(named: "avatar"))

//        do{
//            let url :URL? = URL(string: self.characters[indexPath.row].imageURL)
//            guard let unwrappedURL = url else {return}
//            let imageData :Data = try Data(contentsOf: unwrappedURL)
//            cell.faceImageView.image = UIImage(data: imageData)
//        }catch{
//            print("err")
//        }
    }
 

}
