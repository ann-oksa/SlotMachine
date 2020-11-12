//
//  ProfileViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 23.10.2020.
//

import UIKit

class ProfileViewController: UIViewController, UITabBarControllerDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    var player = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadDataForView()
               
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self
        reloadDataForView()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.delegate = nil
    }

    func reloadDataForView(){
        nameLabel.text = "Hello, \(Game.shared.player.name)"
        balanceLabel.text = "Your balance: \(Game.shared.player.balance)"
    }
    func leavingAlert(){
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

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController == viewController as? GameViewController {
            self.leavingAlert()
            return false
        } else {
            return true
        }
    }
    
}


