//
//  MainAppleServiceHandler.swift
//  Chain of Responsibility
//
//  Created by Ick on 2021/05/23.
//

import Foundation
// Concrete Handler
class MainAppleServiceHandler: CustomerServiceHandler {
    var nextHandler: CustomerServiceHandler?
    
    func handle(request: String) -> String {
        if request == "Apple" {
            return "Apple 부서로 연결합니다."
        } else {
            if let response = nextHandler?.handle(request: request) {
                return response
            } else {
                return "원하시는 서비스는 제공하지 않습니다."
            }
        }
    }
}
