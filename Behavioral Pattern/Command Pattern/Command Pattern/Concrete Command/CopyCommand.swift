//
//  CopyCommand.swift
//  Command Pattern
//
//  Created by Ick on 2021/05/25.
//

import Foundation

// Concrete Command
class CopyCommand: Command {
    var receiver: TextEditor
    var backup: String = ""
    
    init(receiver: TextEditor) {
        self.receiver = receiver
    }
    
    func undo() {
        receiver.clipboard = self.backup
        self.backup = ""
    }

    func execute() {
        self.backup = receiver.clipboard
        receiver.clipboard = receiver.text
    }
}
