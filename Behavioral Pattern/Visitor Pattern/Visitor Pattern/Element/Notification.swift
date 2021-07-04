//
//  Notification.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation
// Element Interface
protocol Notification {
    var notificationType: String { get }
    func accept(visitor: NotificationPolicy) -> Bool
}

