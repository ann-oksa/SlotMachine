//
//  Analyzer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// анализирует выигрышная ли комбинация или нет

class Analyzer {
   
    func getWinningCombinationsFromTripplet(_ triplet: Tripplet) -> WinningCombination {
        if triplet.one == triplet.two &&  triplet.one == triplet.three {
            triplet.changeDigitsOfTripplet()
            return .jackpot
        }
        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
            triplet.changeDigitsOfTripplet()
            return .up
        }
        if triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three {
            triplet.changeDigitsOfTripplet()
            return .down
        }
        if triplet.one % 10 == 0 && triplet.two % 10 == 0 && triplet.three % 10 == 0 {
            triplet.changeDigitsOfTripplet()
            return .even
        }
        if triplet.one % 10 == 1 && triplet.two % 10 == 1 && triplet.three % 10 == 1 {
            triplet.changeDigitsOfTripplet()
            return .odd
        }
        if triplet.one + triplet.two == triplet.three {
            triplet.changeDigitsOfTripplet()
            return .fibonacci
        }
        triplet.changeDigitsOfTripplet()
        return .nothing
    }
    

}
