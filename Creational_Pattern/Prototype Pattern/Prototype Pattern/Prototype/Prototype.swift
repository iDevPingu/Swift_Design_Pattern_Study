//
//  Prototype.swift
//  Prototype Pattern
//
//  Created by Ick on 2021/05/10.
//

import Foundation

// Prototype
public protocol Prototype: class {
    init(prototype: Self)
}
extension Prototype {
    public func clone() -> Self {
        return type(of: self).init(prototype: self)
    }
}
