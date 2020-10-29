//
//  Analyzer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// анализирует выигрышная ли комбинация или нет

class Analyzer {
    var msg = [String]()
    
     func isJack(triplet: Tripplet)  {
        if triplet.one == triplet.two &&  triplet.one == triplet.three {
            print("jack")
            msg.append(WinningCombination.jackpot.rawValue)
        }
    }
    
     func isOdd(triplet: Tripplet)  {
        if triplet.one % 2 != 0 && triplet.two % 2 != 0 && triplet.three % 2 != 0 {
            print("odd")
            msg.append(WinningCombination.odd.rawValue)
        }
    }
    func isEven(triplet: Tripplet){
        if triplet.one % 2 == 0 && triplet.two % 2 == 0 && triplet.three % 2 == 0 {
            print("even")
            msg.append(WinningCombination.even.rawValue)
        }
    }
    
    func isUp(triplet: Tripplet) {
        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
            print("up")
            msg.append(WinningCombination.up.rawValue)
    }
    }
    
    func isDown(triplet: Tripplet) {
        if triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three {
            print("down")
            msg.append(WinningCombination.down.rawValue)
    }
    }
    
    func isFibonacci(triplet: Tripplet) {
        if triplet.one + triplet.two == triplet.three {
            print("fibo")
            msg.append(WinningCombination.fibonacci.rawValue)
    }
    }
    
    func find(tripplet: Tripplet) -> [String] {
        msg = [String]()
        tripplet.changeDigitsOfTripplet()
        isJack(triplet: tripplet)
        isOdd(triplet: tripplet)
        isEven(triplet: tripplet)
        isUp(triplet: tripplet)
        isDown(triplet: tripplet)
        isFibonacci(triplet: tripplet)
        if msg.isEmpty {
            msg.append("Nothing")
        }
        
    return msg
    }
//    func getWinningCombinationsFromTripplet(_ triplet:  Tripplet ) -> WinningCombination {
//
//        if triplet.one == triplet.two &&  triplet.one == triplet.three {
//            triplet.changeDigitsOfTripplet()
//
//            return .jackpot
//        }
//        if triplet.one < triplet.two && triplet.two < triplet.three && triplet.one < triplet.three {
//            triplet.changeDigitsOfTripplet()
//            return .up
//        }
//        if triplet.one > triplet.two && triplet.two > triplet.three && triplet.one > triplet.three {
//            triplet.changeDigitsOfTripplet()
//            return .down
//        }
//        if triplet.one % 2 == 0 && triplet.two % 2 == 0 && triplet.three % 2 == 0 {
//            triplet.changeDigitsOfTripplet()
//            return .even
//        }
//        if triplet.one % 2 != 0 && triplet.two % 2 != 0 && triplet.three % 2 != 0 {
//            triplet.changeDigitsOfTripplet()
//
//            return .odd
//        }
//        if triplet.one + triplet.two == triplet.three {
//            triplet.changeDigitsOfTripplet()
//            return .fibonacci
//        }
//        triplet.changeDigitsOfTripplet()
//        return .nothing
//    }
//

}
