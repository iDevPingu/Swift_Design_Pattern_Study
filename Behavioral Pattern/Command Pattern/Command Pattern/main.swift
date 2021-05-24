//
//  main.swift
//  Command Pattern
//
//  Created by Ick on 2021/05/24.
//

import Foundation

let receiver = TextEditor()
let invoker = Invoker()

invoker.executeCommand(command: WriteCommand(receiver: receiver, backup: "ABC"))
print(receiver.text) // ABC
invoker.executeCommand(command: CopyCommand(receiver: receiver))
invoker.executeCommand(command: PasteCommand(receiver: receiver)) // ABCABC
print(receiver.text)

invoker.executeCommand(command: WriteCommand(receiver: receiver, backup: "ZZZ")) // ABCABCZZZ
print(receiver.text)

invoker.executeCommand(command: PasteCommand(receiver: receiver)) // ABCABCZZZABC
print(receiver.text)

invoker.undoCommand() // ABCABCZZZ
print(receiver.text)

invoker.undoCommand()
print(receiver.text) // ABCABC
