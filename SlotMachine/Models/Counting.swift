//
//  Counting.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import Foundation
// подсчет очков от комбинаций

class Counting {
    let points : [WinningCombination : Int] =
        [.jackpot : 100,
         .up : 30,
         .down : 30,
         .even : 20,
         .odd : 20,
         .fibonacci : 55,
         .nothing : 0]

    var currentBalance = 0
    
    func count(value: WinningCombination) {
        currentBalance += points[value]!
    }
    
}
