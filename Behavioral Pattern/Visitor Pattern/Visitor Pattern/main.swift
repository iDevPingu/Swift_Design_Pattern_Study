//
//  main.swift
//  Visitor Pattern
//
//  Created by Ick on 2021/07/04.
//

import Foundation

let client = Client()
let emailNoti = Email(emailAddressOfSender: "pingu@pingu.com")
let smsNoti = SMS(phoneNumberOfSender: "010-1111-1111")
let pushNoti = Push(userIdOfSender: "pingu")

client.alert(notifications: [emailNoti, smsNoti, pushNoti], policy: NightPolicyVisitor())
client.alert(notifications: [emailNoti, smsNoti, pushNoti], policy: DayPolicyVisitor())


