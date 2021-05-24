//
//  Invoker.swift
//  Command Pattern
//
//  Created by Ick on 2021/05/25.
//

import Foundation

// Invoker
class Invoker {
    var history: [Command] = []
    
    private func push(command: Command) {
        self.history.append(command)
    }
    
    private func pop() -> Command? {
        return history.popLast()
    }
    
    func executeCommand(command: Command) {
        command.execute()
        self.push(command: command)
    }
    
    func undoCommand() {
        let command = self.pop()
        if command == nil {
            print("되돌릴 작업이 없습니다.")
        } else {
            command?.undo()
        }
    }
}
