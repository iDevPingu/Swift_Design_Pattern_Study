//
//  Implementor.swift
//  Bridge Pattern
//
//  Created by Ick on 2021/05/16.
//

import Foundation

// Implementor
protocol SoundButtonImplementor {
    var volume: Float { get set }
    func volumeUp()
    func volumeDown()
    func setVolume(percent: Float)
}
