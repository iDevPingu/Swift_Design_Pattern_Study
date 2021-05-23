//
//  CustomerServiceHandler.swift
//  Chain of Responsibility
//
//  Created by Ick on 2021/05/23.
//

import Foundation
// Handler
protocol CustomerServiceHandler: class {
    var nextHandler: CustomerServiceHandler? { get set }
    func setNext(handler: CustomerServiceHandler)
    func handle(request: String) -> String
}

extension CustomerServiceHandler {
    func setNext(handler: CustomerServiceHandler) {
        if self.nextHandler == nil {
            self.nextHandler = handler
        } else {
            self.nextHandler?.setNext(handler: handler)
        }
    }
}
