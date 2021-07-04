//
//  NightPolicyVisitor.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Concrete Visitor
class NightPolicyVisitor: NotificationPolicy {
    var policyType: String {
        return "Night Policy"
    }
    func isTurnedOn(for email: Email) -> Bool {
        return false
    }
    
    func isTurnedOn(for sms: SMS) -> Bool {
        return false
    }
    
    func isTurnedOn(for push: Push) -> Bool {
        return true
    }
}
