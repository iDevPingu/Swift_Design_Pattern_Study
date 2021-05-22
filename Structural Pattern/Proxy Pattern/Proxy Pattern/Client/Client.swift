//
//  Client.swift
//  Proxy Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

// Client
class Client {
    var auth: AccessAuth
    
    init(auth: AccessAuth) {
        self.auth = auth
    }
}

enum AccessAuth {
    case owner
    case guest
}
