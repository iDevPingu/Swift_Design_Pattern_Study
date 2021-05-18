//
//  Component.swift
//  Composite Pattern
//
//  Created by Ick on 2021/05/18.
//

import Foundation

protocol FileComponent {
    var size: Int { get set }
    var name: String { get set }
    func open()
    func getSize() -> Int
}
