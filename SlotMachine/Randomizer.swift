//
//  Randomizer.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import Foundation
// генерирует три числа, которые будут проверяться на выигрышную комбинацию

public protocol Randomizer {
    func getRandomNumber() -> Int
}

public class IntRandomizer: Randomizer {
    public func getRandomNumber() -> Int {
        return Int.random(in: 0...9)
    }
}
