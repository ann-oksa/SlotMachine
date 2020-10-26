//
//  Analyzer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// анализирует выигрышная ли комбинация или нет

class Analyzer {
   
    class func getWinningCombinationsFromTripplet(_ triplet: Tripplet) -> [WinningCombination] {
        if triplet.one == triplet.two &&  triplet.one == triplet.three {
            return [.jackpot]
        }
        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
            return [.up]
        }
        return [.down]
    }

}
