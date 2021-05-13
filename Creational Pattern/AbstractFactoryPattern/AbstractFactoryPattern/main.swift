//
//  main.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

let factory = ViewFactory.factory
let button = factory.createButton()
let label = factory.createLabel()

button.click()
print(label.text)

