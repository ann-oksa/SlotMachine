//
//  CustomCell.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 02.11.2020.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var combinationLabel: UILabel!
    @IBOutlet weak var nameOfCombinationLabel: UILabel!
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
