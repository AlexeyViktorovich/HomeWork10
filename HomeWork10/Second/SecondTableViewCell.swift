//
//  SecondTableViewCell.swift
//  HomeWork10
//
//  Created by Алексей Полин on 23.09.2021.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var icoI: UIImageView!
    @IBOutlet weak var nameCellL: UILabel!
    @IBOutlet weak var additionalL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
