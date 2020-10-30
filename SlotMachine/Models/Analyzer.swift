//
//  Analyzer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// анализирует выигрышная ли комбинация или нет

class Analyzer {
    
    var message = [String]()
    
    func isJackpot(triplet: Triplet)  {
        if triplet.one == triplet.two && triplet.one == triplet.three {
            print("jack")
            message.append(WinningCombination.jackpot.rawValue)
        }
    }
    
    func isOdd(triplet: Triplet)  {
        if triplet.one % 2 != 0 && triplet.two % 2 != 0 && triplet.three % 2 != 0 {
            print("odd")
            message.append(WinningCombination.odd.rawValue)
        }
    }
    
    func isEven(triplet: Triplet){
        if triplet.one % 2 == 0 && triplet.two % 2 == 0 && triplet.three % 2 == 0 {
            print("even")
            message.append(WinningCombination.even.rawValue)
        }
    }
    
    func isUp(triplet: Triplet) {
        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
            print("up")
            message.append(WinningCombination.up.rawValue)
        }
    }
    
    func isDown(triplet: Triplet) {
        if triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three {
            print("down")
            message.append(WinningCombination.down.rawValue)
        }
    }
    
    func isFibonacci(triplet: Triplet) {
        if triplet.one + triplet.two == triplet.three {
            print("fibo")
            message.append(WinningCombination.fibonacci.rawValue)
        }
    }
    
    func getWinningCombinationFromTriplet(triplet: Triplet) -> [String] {
        message = [String]()
        triplet.changeDigitsOfTriplet()
        isJackpot(triplet: triplet)
        isOdd(triplet: triplet)
        isEven(triplet: triplet)
        isUp(triplet: triplet)
        isDown(triplet: triplet)
        isFibonacci(triplet: triplet)
        if message.isEmpty {
            message.append(WinningCombination.nothing.rawValue)
        }
        return message
    }
    
}
