//
//  Refined Abstraction.swift
//  Bridge Pattern
//
//  Created by Ick on 2021/05/16.
//

import Foundation

// Refined Abstraction
//class AdvancedSoundButton: SoundButton {
//    func mute() {
//        self.soundButtonImplementor?.setVolume(percent: 0.0)
//    }
//}

// Refined Abstraction
extension SoundButton {
    func mute() {
        self.soundButtonImplementor?.setVolume(percent: 0.0)
    }
}
