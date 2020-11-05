//
//  History.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 30.10.2020.
//

import Foundation
// в истории хранятся раунды и каждый ход в раунде

class History {
    var triplets : [Triplet] = []
    var names: [String] = []
    var sum : [Int] = []
    func addRecord(triplet: Triplet, name: String,point: Int ) {
        triplets.append(triplet)
        names.append(name)
        sum.append(point)
        
    }
}











//struct JournalRecord {
//   var triplet: Triplet
//   var score: Int
//   var combinations: [String]
//}
//
//class History {
//    var rounds: [Triplet] = []
//    var combinations: [String] = []
//    var pointes: [Int] = []
//    var record : [JournalRecord] = []
//    func addRecord(triplet: Triplet, points: Int, combination: [String]) {
//        rounds.append(triplet)
//        combinations.append(contentsOf: combination)
//        pointes.append(points)
//    }
//}



