//
//  PlayerCreator.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation
// Creator
protocol PlayerCreator {
    func createPlayer(content: String, contentType: ContentType) -> Player
}

enum ContentType {
    case music
    case video
}
