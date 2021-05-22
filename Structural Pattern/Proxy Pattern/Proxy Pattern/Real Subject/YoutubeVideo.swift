//
//  YoutubeVideo.swift
//  Proxy Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

// Real Service
class YoutubeVideo: YoutubeVideoService {
    
    private var id: Int
    private var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func showPreview() {
        print("\(name) Preview Play 😀\n")
    }
    
    func setName(name: String) {
        print("\(self.name)에서 \(name)으로 이름 수정 완료\n")
        self.name = name
    }
}
