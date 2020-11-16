//
//  ProfileViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 23.10.2020.
//

import UIKit

class ProfileViewController: BaseTapViewController, UITabBarControllerDelegate {
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
    
    func reloadDataForView() {
        nameLabel.text = "Hello, \(Game.shared.player.name)"
        balanceLabel.text = "Your balance: \(Game.shared.player.balance)"
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


