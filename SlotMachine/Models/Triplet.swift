//
//  Triplet.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// создает комбинацию из трех цифр

class Tripplet {
    var one: Int = 0
    var two: Int = 0
    var three: Int = 0
    var randomizer: Randomizer
  
    
    init(randomizer: Randomizer) {
        self.randomizer = randomizer
        changeDigitsOfTripplet()
    }
    
    func changeDigitsOfTripplet() {
        self.one = randomizer.getRandomNumber()
        self.two = randomizer.getRandomNumber()
        self.three = randomizer.getRandomNumber()
    }
    
}

