//
//  main.swift
//  State Pattern
//
//  Created by Ick on 2021/06/28.
//

import Foundation

let youtubeApp = YoutubeApp(subscribeState: UnSubscribeState())

youtubeApp.clickAppIcon()
youtubeApp.clickHomeButton()
youtubeApp.clickDownload()

youtubeApp.subscribe()

youtubeApp.clickAppIcon()
youtubeApp.clickHomeButton()
youtubeApp.clickDownload()
