//
//  Game.swift
//  SlotMachine
//
//  Created by Anna Oksanichenko on 03.11.2020.
//

import Foundation

protocol GameDelegate : class {
    func didFinishTurn(triplet: Triplet, combination: String, points: Int)
}


class Game {
    
    static let shared =  Game()
    
    init () {
        self.player =  Player()
        self.analyzer = Analyzer()
        self.counting = Counting()
    }
    
    enum GameState {
        case idle
        case playing
    }
    
    weak var delegate : GameDelegate?
    var player : Player
    private var analyzer : Analyzer
    private var counting : Counting
    var state: GameState = .idle
    var currentTurn: Int = 0
    let maximumTurn: Int = 20
    let minimalGameCost : Int = 25
    private var balanceInRound: Int = 0
    let history = History()
    let randomizer = IntRandomizer()
    var triplet = Triplet(randomizer: IntRandomizer())
    
    init(player: Player, analyzer: Analyzer, counting: Counting) {
        self.player = player
        self.analyzer = analyzer
        self.counting = counting
    }
    
    func startGame() -> Bool {
        guard state == .idle else {
            print("The  game is already on")
            return false
        }
        guard player.balance >= minimalGameCost else {
            print("Not enough coins for paying")
            return false
        }
        player.balance -= minimalGameCost
        state = .playing
        currentTurn = 0
        history.createNewRound()
        return true
    }
    
    func finishGame() -> Bool {
        state  = .idle
        player.balance += balanceInRound
        balanceInRound = 0
        history.storeData()
        return true
    }
    
    
    func nextTurn() -> Bool {
        
        guard currentTurn < maximumTurn else {
            print("Round is over")
            finishGame()
            return false
        }
        
        let newTriplet = Triplet(randomizer: IntRandomizer())
        newTriplet.changeDigitsOfTriplet()
        let getWinningCombination = analyzer.getWinningCombinationFromTriplet(triplet: newTriplet)
        let countPointsFromCombination = counting.countPointsFromCombination(combinations: getWinningCombination)
        //        player.balance += counting.currentPointsInRound
        balanceInRound += countPointsFromCombination
        currentTurn += 1
        history.addRecord(triplet: newTriplet, combination: analyzer.nameOfCombination.joined(separator: "\n"), pointsForTurn: countPointsFromCombination )
        self.delegate?.didFinishTurn(triplet: newTriplet, combination: analyzer.nameOfCombination.joined(separator: "\n"), points: balanceInRound)
        self.triplet = newTriplet
        return true
    }
    
    
    
}
