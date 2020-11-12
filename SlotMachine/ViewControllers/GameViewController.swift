//
//  GameViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import UIKit

class GameViewController: UIViewController, GameDelegate, UITabBarControllerDelegate {
  
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var combinationLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        Game.shared.delegate = self
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self
    }
    
    @IBAction func goButtonAction(_ sender: UIButton) {
        Game.shared.nextTurn()
    }
    
    func didFinishTurn(triplet: Triplet, combination: String, points: Int) {
        numberLabel.text = triplet.convertTripletIntoString()
        combinationLabel.text = combination
        pointsLabel.text = String(points)
    }
}

