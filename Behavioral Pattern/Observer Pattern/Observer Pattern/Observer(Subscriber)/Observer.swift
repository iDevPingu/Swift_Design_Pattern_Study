//
//  Observer.swift
//  Observer Pattern
//
//  Created by Ick on 2021/06/28.
//

import Foundation
// Observer(Subscriber) Interface
protocol Observer {
    var id: String { get set }
    func update(message: String)
}
