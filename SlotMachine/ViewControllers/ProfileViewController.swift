//
//  ProfileViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 23.10.2020.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    var player = Player()
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Hello, \(player.name)"
        balanceLabel.text = "Your balance: \(player.balance)"
    }
    

    

}
