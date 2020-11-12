//
//  History.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 30.10.2020.
//

import Foundation
// в истории хранятся раунды и каждый ход в раунде

class History {
    // массив массивов с ходами
    
    
    var storage = [[DataForCell]]()
  
    
    var data : [DataForCell] = []
    
    func addRecord(triplet: Triplet, combination: String, pointsForTurn: Int )  {
        let dataForCell = DataForCell(triplets: triplet, description: combination, points: pointsForTurn)
        data.append(dataForCell)
        
    }
    func add()  {
        storage.append(data)
        data = []
    }

    
}




struct DataForCell {
    var triplets : Triplet
    var description: String
    var points : Int
    
}
