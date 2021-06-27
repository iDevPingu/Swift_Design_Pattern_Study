//
//  Publisher.swift
//  Observer Pattern
//
//  Created by Ick on 2021/06/28.
//

import Foundation
// Subject(Publisher) Interface
protocol Publisher {
    var observers: [Observer] { get set }
    func subscribe(observer: Observer)
    func unSubscribe(observer: Observer)
    func notify(message: String)
}
