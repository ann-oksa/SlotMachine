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
    
    func isJackpot(triplet: Triplet) -> Bool {
        return triplet.one == triplet.two && triplet.one == triplet.three
    }
    
    func isOdd(triplet: Triplet) -> Bool {
        return triplet.one % 2 != 0 && triplet.two % 2 != 0 && triplet.three % 2 != 0
    }
    
    func isEven(triplet: Triplet) -> Bool {
        return triplet.one % 2 == 0 && triplet.two % 2 == 0 && triplet.three % 2 == 0
    }
    
    func isUp(triplet: Triplet) -> Bool {
        return triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three
    }
    
    func isDown(triplet: Triplet) -> Bool {
        return triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three
    }
    
    func isFibonacci(triplet: Triplet) -> Bool {
        return triplet.one + triplet.two == triplet.three
    }
    
    func isPrime(triplet: Triplet) -> Bool {
        let sum = triplet.one + triplet.two + triplet.three
        return sum > 1 && !(2..<sum).contains{sum % $0 == 0}
    }
    
     func sosedi(triplet: Triplet) -> Bool {
        // 545
        let res = triplet.two > triplet.two + 1 || triplet.two < triplet.two - 1 && triplet.two > triplet.one + 1 || triplet.two < triplet.one - 1
        return res
    }
    
    func getWinningCombinationFromTriplet(triplet: Triplet) -> [String] {
        nameOfCombination = [String]()
        triplet.changeDigitsOfTriplet()
        if isJackpot(triplet: triplet) {
            nameOfCombination.append(WinningCombination.jackpot.rawValue)
        }
        if isOdd(triplet: triplet) {
            nameOfCombination.append(WinningCombination.odd.rawValue)
        }
        if isEven(triplet: triplet) {
            nameOfCombination.append(WinningCombination.even.rawValue)
        }
        if isUp(triplet: triplet) {
            nameOfCombination.append(WinningCombination.up.rawValue)
        }
        if isDown(triplet: triplet) {
            nameOfCombination.append(WinningCombination.down.rawValue)
        }
        if isFibonacci(triplet: triplet) {
            nameOfCombination.append(WinningCombination.fibonacci.rawValue)
        }
        if isPrime(triplet: triplet) {
            nameOfCombination.append(WinningCombination.prime.rawValue)
        }
        if nameOfCombination.isEmpty {
            nameOfCombination.append(WinningCombination.nothing.rawValue)
        }
        return nameOfCombination
    }
    
}
