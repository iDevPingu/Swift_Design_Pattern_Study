//
//  Product.swift
//  Facade Pattern
//
//  Created by Ick on 2021/05/21.
//

import Foundation

struct Product {
    let identifier: String
    var name: String
    var cost: Int
}

extension Product: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
