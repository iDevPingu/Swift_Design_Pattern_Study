//
//  Command.swift
//  Command Pattern
//
//  Created by Ick on 2021/05/25.
//

import Foundation

// Command
protocol Command {
    var receiver: TextEditor { get set }
    var backup: String { get set }
    
    func execute()
    func undo()
}
