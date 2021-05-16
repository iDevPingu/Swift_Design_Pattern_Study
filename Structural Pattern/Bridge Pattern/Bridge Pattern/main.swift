//
//  main.swift
//  Bridge Pattern
//
//  Created by Ick on 2021/05/16.
//

import Foundation

let tv = TvSoundButton()
let soundButton = SoundButton(implementor: tv)
soundButton.down()

let radio = RadioSoundButton()
soundButton.soundButtonImplementor = radio
soundButton.set(percent: 0.5)

soundButton.mute()
