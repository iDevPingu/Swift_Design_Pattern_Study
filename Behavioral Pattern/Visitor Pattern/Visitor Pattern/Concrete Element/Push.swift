//
//  Push.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Concrete Element
class Push: Notification {
    
    let userIdOfSender: String
    var notificationType: String {
        return "Push"
    }
    init(userIdOfSender: String) {
        self.userIdOfSender = userIdOfSender
    }
    
    func accept(visitor: NotificationPolicy) -> Bool {
        visitor.isTurnedOn(for: self)
    }
}
