//
//  main.swift
//  Observer Pattern
//
//  Created by Ick on 2021/06/27.
//

import Foundation

let appleStore = AppleStore(observers: [])
let pingu = Customer(id: "Pingu")
let pinga = Customer(id: "Pinga")
let roby = Customer(id: "Roby")
let ick = Customer(id: "Ick")

appleStore.subscribe(observer: pingu)
appleStore.subscribe(observer: roby)

appleStore.notify(message: "iPhone 재고 입고!")

appleStore.unSubscribe(observer: roby)
appleStore.notify(message: "iPad 재고 입고!")
