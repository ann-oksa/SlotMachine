//
//  Game.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 03.11.2020.
//

import Foundation

class Game {
    
    enum GameState {
     case idle
     case playing
    }
    
    var player : Player
    var analyzer : Analyzer
  //  var history : History
    var state: GameState
    var currentTurn: Int
   // var slotMachine: SlotMachine
    
    init(player: Player, analyzer: Analyzer,/* history: History, */ state: GameState, currentTurn: Int) {
        self.player = player
        self.analyzer = analyzer
     //   self.history = history
        self.state = state
        self.currentTurn = currentTurn
    }
    
}
