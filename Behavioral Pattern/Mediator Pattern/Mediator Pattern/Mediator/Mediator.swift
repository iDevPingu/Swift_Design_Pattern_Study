//
//  Mediator.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Mediator
protocol Mediator {
    func notify(sender: Colleague, event: EventType)
}

enum EventType {
    case checkBoxSelect
    case checkBoxUnselect
}
