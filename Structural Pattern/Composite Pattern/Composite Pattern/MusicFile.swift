//
//  MusicFile.swift
//  Composite Pattern
//
//  Created by Ick on 2021/05/18.
//

import Foundation

final class MusicFile: FileComponent {
    var size: Int
    var name: String
    var artist: String
    
    func open() {
        print("\(self.name) Music Artist  : \(self.artist)")
    }
    
    func getSize() -> Int {
        return self.size
    }
    
    init(size: Int, name: String, artist: String) {
        self.size = size
        self.name = name
        self.artist = artist
    }
}
