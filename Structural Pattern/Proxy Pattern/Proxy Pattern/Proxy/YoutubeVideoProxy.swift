//
//  YoutubeVideoProxy.swift
//  Proxy Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

// Proxy
class YoutubeVideoProxy: YoutubeVideoService {
    
    private var youtubeVideo: YoutubeVideoService?
    private var id: Int
    private var name: String
    private var client: Client
    
    init(id: Int, name: String, client: Client) {
        self.id = id
        self.name = name
        self.client = client
    }
    func showTitle() {
        print("\(id), \(name) Youtube Video")
    }
    func showPreview() {
        if let youtubeVideo = self.youtubeVideo {
            youtubeVideo.showPreview()
        } else {
            loadVideoInfo()
            self.youtubeVideo?.showPreview()
        }
    }
    
    private func loadVideoInfo() {
        if let _ = self.youtubeVideo {
            print("Cache File Exist!\n")
        } else {
            print("load Video...🐧")
            self.youtubeVideo = YoutubeVideo(id: self.id, name: self.name)
        }
        
    }
    
    func setName(name: String) {
        if client.auth == .guest {
            print("Guest는 이름 수정 불가\n")
        } else if client.auth == .owner {
            self.loadVideoInfo()
            self.name = name
            self.youtubeVideo?.setName(name: name)
        }
    }
}
