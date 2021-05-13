//
//  LinuxViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

class LinuxViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return LinuxButton()
    }
    func createLabel() -> Label {
        return LinuxLabel(text: "Linux Label")
    }
}
