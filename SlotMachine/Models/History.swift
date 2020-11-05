//
//  History.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 30.10.2020.
//

import Foundation
// в истории хранятся раунды и каждый ход в раунде

class History {
    var triplets : [Triplet] = []
    var description: [String] = []
    var points : [Int] = []
    func addRecord(triplet: Triplet, combination: String, pointsForTurn: Int ) {
        triplets.append(triplet)
        description.append(combination)
        points.append(pointsForTurn)
        
    }
}





