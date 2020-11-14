//
//  HistoryDataSource.swift
//  SlotMachine
//
//  Created by Nikita Levintsov on 14.11.20.
//

import UIKit

class HistoryDataSource: NSObject, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Game.shared.history.storage.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let round: Round = Game.shared.history.storage[section]
        let turnsCount = round.turns.count
        return turnsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HistoryCell.reuseIdentifier, for: indexPath) as! HistoryCell
        let round: Round = Game.shared.history.storage[indexPath.section]
        let dataForCell: DataForCell = round.turns[indexPath.row]
        cell.showDataInCell(triplet: dataForCell.triplets, description: dataForCell.description, points: dataForCell.points)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Round \(section) "
    }
}
