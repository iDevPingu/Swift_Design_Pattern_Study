//
//  GameDataSystem.swift
//  Memento Pattern
//
//  Created by Ick on 2021/06/06.
//

import Foundation

// Caretaker
class GameDataSystem {
    private var history: [SaveData] = []
    
    func save(snapshot: SaveData) {
        self.history.append(snapshot)
    }
    
    func load() {
        if let snapshot = self.history.popLast() {
            print("최근 저장 상태를 불러옵니다.\n")
            snapshot.load()
        } else {
            print("저장 기록이 없습니다.\n")
        }
    }
}
