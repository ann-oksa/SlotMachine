//
//  Triplet.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 26.10.2020.
//

import Foundation
// создает комбинацию из трех цифр

class Tripplet {
    let one: Int
    let two: Int
    let three: Int
 
    init(randomizer: Randomizer) {
        self.one = randomizer.getRandomNumber()
        self.two = randomizer.getRandomNumber()
        self.three = randomizer.getRandomNumber()
    }
    
}

