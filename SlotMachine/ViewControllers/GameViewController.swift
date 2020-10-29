//
//  GameViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var conbinationLable: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    let random = IntRandomizer()
    var tripplet = Tripplet(randomizer: IntRandomizer())
    var analyzer = Analyzer()
    var counter = Counting()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
}
  
    @IBAction func goButtonAction(_ sender: UIButton) {
    
        analyzer.find(tripplet: tripplet)
        numberLabel.text = String(tripplet.one) + String(tripplet.two) + String(tripplet.three)
        conbinationLable.text = analyzer.msg.joined(separator: "\n")
        pointsLabel.text = String(counter.currentBalance)
        print(numberLabel.text!)
        print(analyzer.msg)
        
    }
}

