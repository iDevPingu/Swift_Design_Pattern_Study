//
//  WindowViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

class WindowViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return WindowButton()
    }
    
    func createLabel() -> Label {
        return WindowLabel(text: "Window Label")
    }
}
