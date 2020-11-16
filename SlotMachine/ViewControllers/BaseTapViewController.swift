//
//  BaseTapViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 16.11.2020.
//

import UIKit

class BaseTapViewController: UIViewController {

    
    func leavingAlert() {
        let alert = UIAlertController(title: "Let`s play!", message: "Your balance \(Game.shared.player.balance), \n game cost \(Game.shared.minimalGameCost)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(alertAction)
        let gameAction = UIAlertAction(title: "Play", style: UIAlertAction.Style.cancel, handler: { action in
            Game.shared.startGame()
            self.tabBarController?.delegate = nil
            self.tabBarController?.selectedIndex = 1
        } )
        alert.addAction(gameAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
