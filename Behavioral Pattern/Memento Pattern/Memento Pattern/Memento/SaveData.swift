//
//  SaveData.swift
//  Memento Pattern
//
//  Created by Ick on 2021/06/06.
//

import Foundation

// Memento
class SaveData {
    var originator: Game
    var level: Int = 0
    var score: Int = 0
    
    init(originator: Game) {
        self.originator = originator
        self.level = originator.level
        self.score = originator.score
    }
    
    func load() {
        self.originator.setLevel(level: self.level)
        self.originator.setScore(score: self.score)
    }
}
