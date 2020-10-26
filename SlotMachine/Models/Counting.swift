//
//  Counting.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 21.10.2020.
//

import Foundation


/*
 Некоторые комбинации являются выигрышными, а именно:
 1) Джек-пот, все три числа равны, например 2-2-2.
 2) Покращення - числа возрастают слева направо, например, 2-5-6
 3) Даунхил - числа убывают слева направо, например 9-1-0
 4) чет - все числа четные, например, 2-4-6
 5) нечет - все числа нечетные, например, 1-5-7
 6) святая простота - сумма всех чисел является простым числом, например, 2-4-1 в сумме 7
 7) Старик Фибоначчи - сумма первых двух чисел равна третьему, например 3-4-7, 3+4 = 7
 😍 Соседи - числа являются соседями в ряду натуральный чисел, независимо от порядка. Например, 5-3-4
 */

let random = IntRandomizer()
var one = random.getRandomNumber()
var two  = random.getRandomNumber()
var three = random.getRandomNumber()
var msg = [String]()
var points = Int()

let costs : [String : Int] =
    ["Jackpot" : 100,
     "Increase" : 30,
     "Decrease" : 30,
     "Even" : 20,
     "Odd" : 20,
     "Fibonacci" : 55]

func new(){
    one = random.getRandomNumber()
    two  = random.getRandomNumber()
    three = random.getRandomNumber()
}

func play() {
    new()
    if one == two && two == three && three == one {
        points += costs["Jackpot"] ?? 0
        msg.append(Array(costs)[0].key)
    }
    if one < two && two < three && one < three {
        points += costs["Increase"] ?? 0
        msg.append(Array(costs)[1].key)
    }
    if one > two && two > three && one > three {
        points += costs["Decrease"] ?? 0
        msg.append(Array(costs)[2].key)
    }
    if one % 10 == 0 && two % 10 == 0 && three % 10 == 0 {
        points += costs["Even"] ?? 0
        msg.append(Array(costs)[3].key)
    }
    if one % 10 == 1 && two % 10 == 1 && three % 10 == 1 {
        points += costs["Odd"] ?? 0
        msg.append(Array(costs)[4].key)
    }
    if one+two == three {
        points += costs["Fibonacci"] ?? 0
        msg.append(Array(costs)[5].key)
    }
    
    
}

