//
//  TableViewCell.swift
//  kadai13_first
//
//  Created by 白鳥貢 on 2020/08/26.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
 
    @IBOutlet private(set) weak var label: UILabel!
    @IBOutlet private(set) weak var checkView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    @IBAction func pressButton(sender:AnyObject) {
//        imageView.image = UIImage(named:"check.pmg")
//    }

}
