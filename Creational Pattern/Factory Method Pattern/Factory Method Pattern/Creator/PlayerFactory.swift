//
//  PlayerFactory.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

// Factory (Concrete Creator)
struct MusicPlayerFactory: PlayerCreator {
    func createPlayer(content: String) -> Player {
        return MusicPlayer(content: content)
    }
}

struct VideoPlayerFactory: PlayerCreator {
    func createPlayer(content: String) -> Player {
        return VideoPlayer(content: content)
    }
}
