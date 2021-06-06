//
//  Game.swift
//  Memento Pattern
//
//  Created by Ick on 2021/06/06.
//

import Foundation

// Originator
class Game {
    var level: Int = 0
    var score: Int = 0
    
    func setLevel(level: Int) {
        self.level = level
    }
    
    func setScore(score: Int) {
        self.score = score
    }
    
    func makeSnapshot() -> SaveData {
        print("Level : \(self.level), Score: \(self.score) 상태를 저장합니다.\n")
        return SaveData(originator: self)
    }
    
    func printCurrentState() {
        print("현재 상태 Level : \(self.level), Score: \(self.score)")
    }
}
