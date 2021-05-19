//
//  main.swift
//  Decorator Pattern
//
//  Created by Ick on 2021/05/19.
//

import Foundation

let notifier = Notifier()
let emailNotifier = EmailDecorator(notifier: notifier)
let slackNotifier = SlackDecorator(notifier: emailNotifier)
slackNotifier.notify(message: "Hello")
