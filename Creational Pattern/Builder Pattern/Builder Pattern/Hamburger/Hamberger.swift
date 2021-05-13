//
//  Hamberger.swift
//  Builder Pattern
//
//  Created by Ick on 2021/05/09.
//

import Foundation

public struct Hamburger {
    public let meat: Meat
    public let sauce: Set<Sauce>
    public let vegetable: Set<Vegetable>
    public let bread: Bread
    
    func getAllProperty() {
        print("Meat = \(meat)")
        print("Sauce = \(sauce)")
        print("Vegetable = \(vegetable)")
        print("Bread = \(bread)\n")
    }
}
