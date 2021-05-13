//
//  ViewAbstractFactory.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

protocol ViewAbstractFactory {
    func createButton() -> Button
    func createLabel() -> Label
}
