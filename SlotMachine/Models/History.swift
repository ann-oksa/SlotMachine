//
//  History.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 30.10.2020.
//

import Foundation
// в истории хранятся раунды и каждый ход в раунде

class History {
    
    var storage : [Round] = []
    var round = Round()
    
    func addRecord(triplet: Triplet, combination: String, pointsForTurn: Int )  {
        let dataForCell = DataForCell(triplets: triplet, description: combination, points: pointsForTurn)
        round.addDataForCell(dataForCell)
    }
    
    func addRoundIntoStorageAndCleanRound()  {
        storage.append(round)
        round.reset()
    }
}

struct Round {
    public private(set) var turns : [DataForCell] = []
    
    mutating func addDataForCell(_ dataForCell: DataForCell) {
        self.turns.append(dataForCell)
    }
    
    mutating func reset() {
        self.turns = []
    }
}

struct DataForCell {
    var triplets : Triplet
    var description: String
    var points : Int
    
}
