//
//  Player.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

// Product Interface
protocol Player {
    var content: String { get set }
    init(content: String)
    func play()
    func pause()
    func changeContent(name: String)
}
