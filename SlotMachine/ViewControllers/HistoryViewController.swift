//
//  HistoryViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 23.10.2020.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITabBarControllerDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    private var dataSource = HistoryDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = dataSource
        
        let nib = UINib.init(nibName: HistoryCell.reuseIdentifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: HistoryCell.reuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.delegate = self
        tableView.reloadData()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.delegate = nil
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.black
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    
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
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController == viewController as? GameViewController {
            self.leavingAlert()
            return false
        } else {
            return true
        }
    }
}
