//
//  Colleague.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Base Colleague
class Colleague {
    var mediator: Mediator?
    
    func setMediator(mediator: Mediator) {
        self.mediator = mediator
    }
}
