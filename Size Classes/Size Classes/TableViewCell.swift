//
//  TableViewCell.swift
//  Size Classes
//
//  Created by Shreesha on 19/04/16.
//  Copyright © 2016 YML. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let kReuseIdentifier = "TableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 7/255, green: 211/255, blue: 117/255, alpha: 1.0)
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
