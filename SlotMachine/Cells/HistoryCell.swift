//
//  CustomCell.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 02.11.2020.
//

import UIKit

class HistoryCell: UITableViewCell {
    
    @IBOutlet weak var combinationLabel: UILabel!
    @IBOutlet weak var nameOfCombinationLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
    }
    public func showDataInCell(triplet: Triplet, description: String, points: Int) {
        combinationLabel.text = triplet.convertTripletIntoString()
        nameOfCombinationLabel.text = description
        pointsLabel.text = String(points)
    }
    
}
