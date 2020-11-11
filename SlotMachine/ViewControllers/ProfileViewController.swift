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
        
        nameLabel.text = "Hello, \(player.name)"
        balanceLabel.text = "Your balance: \(player.balance)"
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.leavingAlert()
    }
    
    func leavingAlert(){
        let alert = UIAlertController(title: "Alert", message: "You forgot to do something here", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(alertAction)
        let gameAction = UIAlertAction(title: "GO", style: UIAlertAction.Style.cancel, handler: { action in
            self.tabBarController?.delegate = nil
            self.tabBarController?.selectedIndex = 1
        } )
        alert.addAction(gameAction)
      
        self.present(alert, animated: true, completion: nil)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
       
        self.leavingAlert()
        return false
    }
    
}


