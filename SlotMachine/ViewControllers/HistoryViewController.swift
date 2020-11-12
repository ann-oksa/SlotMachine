//
//  HistoryViewController.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 23.10.2020.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib.init(nibName: HistoryCell.reuseIdentifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: HistoryCell.reuseIdentifier)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return Game.shared.history.storage.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return Game.shared.history.data.count
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: HistoryCell.reuseIdentifier, for: indexPath) as! HistoryCell
//        let dataForCell = Game.shared.history.data[indexPath.row]
//        cell.showDataInCell(triplet: dataForCell.triplets, description: dataForCell.description, points: dataForCell.points)
//        return cell
//    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Game.shared.history.storage.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.history.data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        for key in Game.shared.history.storage.keys {
            
            let test = Game.shared.history.storage[key]?.count
            print("\(key) -> \(test)")
            
        }
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HistoryCell.reuseIdentifier, for: indexPath) as! HistoryCell
        let dataForCell = Game.shared.history.data[indexPath.row]
        cell.showDataInCell(triplet: dataForCell.triplets, description: dataForCell.description, points: dataForCell.points)
        return cell

        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section) "
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor.black
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    
}
