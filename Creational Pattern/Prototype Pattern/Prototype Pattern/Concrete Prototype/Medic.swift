//
//  Medic.swift
//  Prototype Pattern
//
//  Created by Ick on 2021/05/11.
//

import Foundation

// Concrete Prototype
public class Medic: Prototype {
    
    public var health: Int
    public var mana: Int
    public var defence: Int
    
    public init(health: Int, mana: Int, defence: Int) {
        self.health = health
        self.mana = mana
        self.defence = defence
    }
    
    public required convenience init(prototype: Medic) {
        self.init(health: prototype.health, mana: prototype.mana, defence: prototype.defence)
    }
    func printStatus() {
        print("Medic Health: \(health) Mana: \(mana) Defence: \(defence)\n")
    }
}
