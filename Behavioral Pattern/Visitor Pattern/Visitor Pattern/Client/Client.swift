//
//  Client.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation

class Client {
    func alert(notifications: [Notification], policy: NotificationPolicy) {
        print(policy.policyType)
        notifications.forEach { notitication in
            if notitication.accept(visitor: policy) {
                print("\(notitication.notificationType) notification send complete")
            } else {
                print("\(notitication.notificationType) notification can't send now")
            }
        }
        print("\n")
    }
}
