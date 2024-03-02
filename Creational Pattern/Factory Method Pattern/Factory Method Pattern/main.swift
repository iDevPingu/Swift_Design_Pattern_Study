//
//  main.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

struct Client {
    func getPlayer(
        with factory: PlayerCreator,
        content: String
    ) -> Player {
        return factory.createPlayer(content: content)
    }
}

let client = Client()

let musicPlayer = client.getPlayer(with: MusicPlayerFactory(), content: "핑구 BGM")
let videoPlayer = client.getPlayer(with: VideoPlayerFactory(), content: "핑구 비디오")

musicPlayer.play()
musicPlayer.changeContent(name: "에스파 노래")

videoPlayer.pause()
videoPlayer.changeContent(name: "어벤져스")
