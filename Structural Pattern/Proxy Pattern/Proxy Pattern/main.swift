//
//  main.swift
//  Proxy Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

let owner = Client(auth: .owner)
let ownerProxy = YoutubeVideoProxy(id: 1, name: "LOL Game Video", client: owner)

ownerProxy.showTitle()
ownerProxy.showPreview() // 실제 비디오 객체 필요 -> 생성 후 캐시에 저장
ownerProxy.setName(name: "LOL 비디오") // 실제 비디오 객체 필요 -> 캐시에 이미 존재

let guest = Client(auth: .guest)
let guestProxy = YoutubeVideoProxy(id: 2, name: "Funny Video", client: guest)

guestProxy.showTitle()
guestProxy.setName(name: "내가 이름 바꿀거지롱") // Guest 권한이라 이름 변경 불가능

