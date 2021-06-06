//
//  main.swift
//  Memento Pattern
//
//  Created by Ick on 2021/06/06.
//

import Foundation

let originator = Game()
let caretaker = GameDataSystem()
originator.setLevel(level: 5)
originator.setScore(score: 3)

let memento = originator.makeSnapshot()
caretaker.save(snapshot: memento)

// 게임을 하다가 레벨과 점수가 이전 저장 했을 때 보다 낮아짐
originator.setLevel(level: 1)
originator.setScore(score: 1)
originator.printCurrentState()

// 복구하여 레벨과 점수 복구
caretaker.load()
originator.printCurrentState()

caretaker.load()





