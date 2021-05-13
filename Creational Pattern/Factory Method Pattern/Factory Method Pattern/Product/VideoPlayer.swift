//
//  VideoPlayer.swift
//  Factory Method Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

// Concrete Product
class VideoPlayer: Player {
    var content: String
    required init(content: String) {
        self.content = content
    }
    
    func play() {
        print("VideoPlayer Play")
    }
    
    func pause() {
        print("VideoPlayer Pause")
    }
    
    func changeContent(name: String) {
        print("\(self.content)에서 \(name)로 비디오 변경\n")
        self.content = name
    }
}
