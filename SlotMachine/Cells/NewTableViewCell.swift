//
//  NewTableViewCell.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 02.11.2020.
//

import UIKit

class NewTableViewCell: UITableViewCell {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
