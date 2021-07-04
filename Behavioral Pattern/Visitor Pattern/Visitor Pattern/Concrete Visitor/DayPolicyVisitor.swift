//
//  DayPolicyVisitor.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Concrete Visitor
class DayPolicyVisitor: NotificationPolicy {
    var policyType: String {
        return "Day Policy"
    }
    func isTurnedOn(for email: Email) -> Bool {
        return true
    }
    
    func isTurnedOn(for sms: SMS) -> Bool {
        return true
    }
    
    func isTurnedOn(for push: Push) -> Bool {
        return true
    }
}
