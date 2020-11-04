//
//  TurnOutcome.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 03.11.2020.
//

import Foundation

class TurnOutcome {
    
    let triplet: Triplet
    let score: Int
    
    init(triplet: Triplet, score: Int) {
        self.triplet = triplet
        self.score = score
    }
}
