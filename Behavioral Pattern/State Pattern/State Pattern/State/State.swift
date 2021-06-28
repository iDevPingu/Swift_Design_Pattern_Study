//
//  State.swift
//  State Pattern
//
//  Created by Ick on 2021/06/29.
//

import Foundation

// State Interface
protocol State {
    func playBackground()
    func playForeground()
    func videoDownload()
}
