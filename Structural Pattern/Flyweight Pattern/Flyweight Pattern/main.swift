//
//  main.swift
//  Flyweight Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

var bullets: [Bullet] = []

for i in 0..<5 {
    let i = Float(i)
    bullets.append(Bullet(x: i, y: i, velocity: i*5, extrinsicState: BulletFlyweightFactory.getBulletFlyweight(color: "Red", size: 12.0)))
}

for i in 0..<5 {
    let i = Float(i)
    bullets.append(Bullet(x: i, y: i, velocity: i*5, extrinsicState: BulletFlyweightFactory.getBulletFlyweight(color: "Red", size: 24.0)))
}

print("Flyweight 객체 수 : \(BulletFlyweightFactory.flyweightCount)")

