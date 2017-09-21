//
//  TableViewCell.swift
//  hello
//
//  Created by shohei.ogata on 2017/09/21.
//  Copyright © 2017年 GMO Pepabo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var faceImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
