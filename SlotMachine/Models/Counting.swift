//
//  Counting.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import Foundation
// подсчет очков от комбинаций

class Counting {
    let pointsForCombination : [WinningCombination : Int] = [
        .jackpot : 100,
        .up : 30,
        .down : 30,
        .even : 20,
        .odd : 20,
        .fibonacci : 50,
        .prime : 30, 
        .nothing : 0 ]
    
    
    func countPointsFromCombination(combinations: [String]) -> Int {
        var currentPointsInTurn = 0
        for element in combinations {
            for key in pointsForCombination.keys {
                if element == key.rawValue {
                    currentPointsInTurn += pointsForCombination[key]!
                }
            }
        }
        
        return currentPointsInTurn
    }
    
}
