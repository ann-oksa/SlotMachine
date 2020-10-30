//
//  Triplet.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// создает комбинацию из трех цифр

class Triplet {
    var one: Int = 0
    var two: Int = 0
    var three: Int = 0
    var randomizer: Randomizer
    
    init(randomizer: Randomizer) {
        self.randomizer = randomizer
        changeDigitsOfTriplet()
    }
    
    func changeDigitsOfTriplet() {
        self.one = randomizer.getRandomNumber()
        self.two = randomizer.getRandomNumber()
        self.three = randomizer.getRandomNumber()
    }
    
}

