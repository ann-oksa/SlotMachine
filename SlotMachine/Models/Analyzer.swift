//
//  Analyzer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// анализирует выигрышная ли комбинация или нет

class Analyzer {
    
    var nameOfCombination = [String]()
    
    func isJackpot(triplet: Triplet) {
        if triplet.one == triplet.two && triplet.one == triplet.three {
            nameOfCombination.append(WinningCombination.jackpot.rawValue)
        }
    }
    
    func isOdd(triplet: Triplet) {
        if triplet.one % 2 != 0 && triplet.two % 2 != 0 && triplet.three % 2 != 0 {
            nameOfCombination.append(WinningCombination.odd.rawValue)
        }
    }
    
    func isEven(triplet: Triplet) {
        if triplet.one % 2 == 0 && triplet.two % 2 == 0 && triplet.three % 2 == 0 {
            nameOfCombination.append(WinningCombination.even.rawValue)
        }
    }
    
    func isUp(triplet: Triplet) {
        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
            nameOfCombination.append(WinningCombination.up.rawValue)
        }
    }
    
    func isDown(triplet: Triplet) {
        if triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three {
            nameOfCombination.append(WinningCombination.down.rawValue)
        }
    }
    
    func isFibonacci(triplet: Triplet) {
        if triplet.one + triplet.two == triplet.three {
            nameOfCombination.append(WinningCombination.fibonacci.rawValue)
        }
    }
    
    func getWinningCombinationFromTriplet(triplet: Triplet) -> [String] {
        nameOfCombination = [String]()
        triplet.changeDigitsOfTriplet()
        isJackpot(triplet: triplet)
        isOdd(triplet: triplet)
        isEven(triplet: triplet)
        isUp(triplet: triplet)
        isDown(triplet: triplet)
        isFibonacci(triplet: triplet)
        if nameOfCombination.isEmpty {
            nameOfCombination.append(WinningCombination.nothing.rawValue)
        }
        return nameOfCombination
    }
    
}
