//
//  PlayerFactory.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

// Factory (Concrete Creator)
class PlayerFactory: PlayerCreator {
    func createPlayer(content: String, contentType: ContentType) -> Player {
        switch contentType {
        case .music:
            return MusicPlayer(content: content)
        case .video:
            return VideoPlayer(content: content)
        }
    }
}
