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
        
        let nib = UINib.init(nibName: CustomCell.reuseIdentifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: CustomCell.reuseIdentifier)
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        print("view will appear")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.history.rounds.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseIdentifier, for: indexPath) as! CustomCell
        var triplet  = Game.shared.history.rounds[indexPath.row]
        cell.combinationLabel.text = String(triplet.one) + String(triplet.two) + String(triplet.three)
        cell.nameOfCombinationLabel.text = "section \(indexPath.section)"
        cell.pointsLabel.text = "row\(indexPath.row)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section)"
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor.black
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    
}
