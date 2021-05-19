//
//  Notifier.swift
//  Decorator Pattern
//
//  Created by Ick on 2021/05/19.
//

import Foundation

// Concrete Component
class Notifier: NotifierComponent {
    func notify(message: String) {
        print("\(message) 전송완료")
    }
}
