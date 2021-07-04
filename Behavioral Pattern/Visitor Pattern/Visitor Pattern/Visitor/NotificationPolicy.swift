//
//  NotificationPolicy.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Visitor Interface
protocol NotificationPolicy {
    var policyType: String { get }
    func isTurnedOn(for email: Email) -> Bool
    func isTurnedOn(for sms: SMS) -> Bool
    func isTurnedOn(for push: Push) -> Bool
}
