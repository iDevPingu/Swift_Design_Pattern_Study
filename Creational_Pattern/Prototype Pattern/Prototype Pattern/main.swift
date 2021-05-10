//
//  main.swift
//  Prototype Pattern
//
//  Created by Ick on 2021/05/10.
//

import Foundation

//var marin = Marin(health: 40, attack: 5, defence: 1)
//let medic = Medic(health: 50, mana: 20, defence: 1)
//
//print("Original")
//marin.printStatus()
//medic.printStatus()
//
//var newMarin = marin.clone()
//let newMedic = medic.clone()
//
//print("Clone")
//newMarin.printStatus()
//newMedic.printStatus()

var marin = Marin(health: 40, attack: 5, defence: 1)
var shallowCopyMarin = marin
var deepCopyMarin = marin.clone()

shallowCopyMarin.health += 7
deepCopyMarin.defence += 5

marin.printStatus()
deepCopyMarin.printStatus()

var marinAddress: UnsafeMutablePointer<Marin> = .init(&marin)
var shallowCopyMarinAddress: UnsafeMutablePointer<Marin> = .init(&shallowCopyMarin)
var deepCopyMarinAddress: UnsafeMutablePointer<Marin> = .init(&deepCopyMarin)
print("원본 마린 주소 : \(marinAddress)")
print("얕은 복사 마린 주소 : \(shallowCopyMarinAddress)")
print("깊은 복사 마린 주소 : \(deepCopyMarinAddress)")


