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
    public func bind(t: Triplet) {
        combinationLabel.text = t.convertTripletIntoString()
       // nameOfCombinationLabel.text = 
    }
//    let triplet  = Game.shared.history.triplets[indexPath.row]
//    cell.combinationLabel.text = triplet.convertTripletIntoString()
//    cell.nameOfCombinationLabel.text = Game.shared.history.description[indexPath.row]
//    cell.pointsLabel.text = String(Game.shared.history.points[indexPath.row])
    
}
