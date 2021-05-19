//
//  SlackDecorator.swift
//  Decorator Pattern
//
//  Created by Ick on 2021/05/19.
//

import Foundation

// Concrete Decorator
class SlackDecorator: NotifierDecorator {
    var wrappee: NotifierComponent
    
    required init(notifier: NotifierComponent) {
        self.wrappee = notifier
    }
    
    func notify(message: String) {
        let to = companyInfo()
        print("\(to) Slack 채널에 \(message) 전송완료\n")
        wrappee.notify(message: message)
    }
    
    func companyInfo() -> String {
        print("보낼 Company 채널을 입력하세요 : ", separator: "", terminator: "")
        return readLine()!
    }
}
