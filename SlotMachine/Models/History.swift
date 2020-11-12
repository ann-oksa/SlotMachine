//
//  History.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 30.10.2020.
//

import Foundation
// в истории хранятся раунды и каждый ход в раунде

class History {
    //словарь, в котором ключ это раунд, значение это массив ходов
    
    var data : [DataForCell] = []
    var storage = [Int : [DataForCell]]()
    var turn = 0
    func addRecord(triplet: Triplet, combination: String, pointsForTurn: Int )  {
        
        let dataForCell = DataForCell(triplets: triplet, description: combination, points: pointsForTurn)
        data.append(dataForCell)
    }
    func createNewRound() {
        turn += 1
        data = []
        
    }
    
    func storeData() {
        storage[turn] = data
    }
    
}




struct DataForCell {
    var triplets : Triplet
    var description: String
    var points : Int
    
}
