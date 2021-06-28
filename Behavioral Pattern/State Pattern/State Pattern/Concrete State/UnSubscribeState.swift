//
//  UnSubscribeState.swift
//  State Pattern
//
//  Created by Ick on 2021/06/29.
//

import Foundation

// Concrete State
class UnSubscribeState: State {
    func playBackground() {
        print("결제를 안하면 백그라운드에서는 재생 할 수 없어요.")
    }
    func playForeground() {
        print("영상 재생 중")
    }
    func videoDownload() {
        print("결제를 안하면 비디오 다운로드가 불가능해요.")
    }
}
