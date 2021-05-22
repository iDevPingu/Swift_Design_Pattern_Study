//
//  YoutubeVideoService.swift
//  Proxy Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

// Subject (Service Interface)
protocol YoutubeVideoService {
    func showPreview()
    func setName(name: String)
}
