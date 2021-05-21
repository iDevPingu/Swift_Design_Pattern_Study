//
//  BulletFlyweight.swift
//  Flyweight Pattern
//
//  Created by Ick on 2021/05/22.
//

import Foundation

// Flyweight
class BulletFlyweight {
    let color: String
    let size: Float
    
    init(color: String, size: Float) {
        self.color = color
        self.size = size
    }
}
