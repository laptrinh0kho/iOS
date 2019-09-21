//
//  MyTableViewCell.swift
//  CustomTableViewCell
//
//  Created by THAI LE QUANG on 7/10/19.
//  Copyright © 2019 LTIOS. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func visulizeCell(with item: MenuItem) {
        contentImageView.image = UIImage(named: item.image)
        nameLabel.text = item.name
        countryLabel.text = item.country
    }

}
