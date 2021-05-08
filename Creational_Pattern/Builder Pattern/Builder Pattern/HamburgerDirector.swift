//
//  HamburgerDirector.swift
//  Builder Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

class HamburgerDirector {
    public func createBeefBurger() -> Hamburger {
        let builder = HamburgerBuilder()
        builder.setMeat(.beef)
        builder.addSauce(.ketchup)
        builder.addSauce(.mustard)
        builder.addVegetable(.pickels)
        builder.addVegetable(.lettuce)
        builder.setBread(.ryeBread)
        return builder.build()
    }
    public func createChickenBurger() -> Hamburger {
        let builder = HamburgerBuilder()
        builder.setMeat(.chicken)
        builder.addSauce(.secret)
        builder.addSauce(.mayonnaise)
        builder.addVegetable(.cabbage)
        builder.addVegetable(.tomatoes)
        builder.setBread(.brownBread)
        return builder.build()
    }
}
