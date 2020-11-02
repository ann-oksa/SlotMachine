//
//  GameViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var combinationLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    
    let random = IntRandomizer()
    var triplet = Triplet(randomizer: IntRandomizer())
    var analyzer = Analyzer()
    var counter = Counting()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func goButtonAction(_ sender: UIButton) {
        
        _ = analyzer.getWinningCombinationFromTriplet(triplet: triplet)
        _ = counter.countPointsFromCombination(combinations: analyzer.nameOfCombination)
        numberLabel.text = String(triplet.one) + String(triplet.two) + String(triplet.three)
        combinationLabel.text = analyzer.nameOfCombination.joined(separator: "\n")
        pointsLabel.text = String(counter.currentPointsInRound)
        
    }
}

