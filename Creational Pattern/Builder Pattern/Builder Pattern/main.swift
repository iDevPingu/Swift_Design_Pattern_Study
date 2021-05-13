//
//  main.swift
//  Builder Pattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

let builder = HamburgerBuilder()
var hamburger = builder.build()
print("첫번째 버거")
hamburger.getAllProperty()

print("두번째 버거")
builder.setMeat(.chicken)
builder.setBread(.hotDogBun)
builder.addSauce(.secret)
builder.addVegetable(.cabbage)
hamburger = builder.build()
hamburger.getAllProperty()

let director = HamburgerDirector()
print("Director가 만든 비프버거")
hamburger = director.createBeefBurger()
hamburger.getAllProperty()

var hamburgerWithoutBuilder = Hamburger(meat: .beef,
                                        sauce: [.ketchup],
                                        vegetable: [.cabbage],
                                        bread: .brownBread)
print("빌더 없이 직접 만든 수제버거")
hamburgerWithoutBuilder.getAllProperty()
