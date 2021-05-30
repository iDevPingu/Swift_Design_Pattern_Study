//
//  TextField.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Collegue
class TextField: Colleague {
    var isHidden: Bool = true {
        didSet {
            if isHidden {
                print("TextField 비활성화")
            } else {
                print("TextField 활성화")
            }
        }
    }
}
