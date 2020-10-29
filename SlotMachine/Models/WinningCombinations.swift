//
//  Combinations.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// хранит в себе комбинации

enum WinningCombination : String, CaseIterable {
    case jackpot = "Jackpot"
    case up = "Up"
    case down = "Down"
    case nothing = "Nothing"
    case even = "Even"
    case odd = "Odd"
    case fibonacci = "Fibonacci"
}

