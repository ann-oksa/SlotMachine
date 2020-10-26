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
    var random = IntRandomizer()
    let trip = Tripplet(randomizer: IntRandomizer())
    let analyzer = 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
}
  
    @IBAction func goButtonAction(_ sender: UIButton) {
        
    }
}
