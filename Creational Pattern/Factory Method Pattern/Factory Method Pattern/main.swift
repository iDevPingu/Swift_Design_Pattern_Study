//
//  main.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

let factory = PlayerFactory()
let musicPlayer = factory.createPlayer(content: "핑구 BGM", contentType: .music)
let videoPlayer = factory.createPlayer(content: "핑구 비디오", contentType: .video)

musicPlayer.play()
musicPlayer.changeContent(name: "IU 노래")

videoPlayer.pause()
videoPlayer.changeContent(name: "어벤져스")




