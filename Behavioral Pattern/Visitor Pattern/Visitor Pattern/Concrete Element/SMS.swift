//
//  SMS.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Concrete Element
class SMS: Notification {
    
    let phoneNumberOfSender: String
    var notificationType: String {
        return "SMS"
    }
    init(phoneNumberOfSender: String) {
        self.phoneNumberOfSender = phoneNumberOfSender
    }
    
    func accept(visitor: NotificationPolicy) -> Bool {
        visitor.isTurnedOn(for: self)
    }
}
