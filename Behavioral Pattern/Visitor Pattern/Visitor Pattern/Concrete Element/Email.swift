//
//  Email.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Concrete Element
class Email: Notification {

    let emailAddressOfSender: String
    var notificationType: String {
        return "Email"
    }
    init(emailAddressOfSender: String) {
        self.emailAddressOfSender = emailAddressOfSender
    }
    
    func accept(visitor: NotificationPolicy) -> Bool {
        visitor.isTurnedOn(for: self)
    }
}
