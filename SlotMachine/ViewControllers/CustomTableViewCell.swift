//
//  CustomTableViewCell.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 29.10.2020.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var combinationLabel: UILabel!
    @IBOutlet weak var nameOfComb: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
