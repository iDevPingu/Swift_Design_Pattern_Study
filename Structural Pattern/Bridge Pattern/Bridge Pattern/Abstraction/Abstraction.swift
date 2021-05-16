//
//  Abstraction.swift
//  Bridge Pattern
//
//  Created by Ick on 2021/05/16.
//

import Foundation
// Abstraction
class SoundButton {
    // Bridge
    var soundButtonImplementor: SoundButtonImplementor?
    
    init(implementor: SoundButtonImplementor) {
        self.soundButtonImplementor = implementor
    }
    
    func up() {
        self.soundButtonImplementor?.volumeUp()
    }
    func down() {
        self.soundButtonImplementor?.volumeDown()
    }
    func set(percent: Float) {
        self.soundButtonImplementor?.setVolume(percent: percent)
    }
}
