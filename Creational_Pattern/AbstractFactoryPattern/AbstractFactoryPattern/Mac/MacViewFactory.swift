//
//  MacViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Ick on 2021/05/08.
//

import Foundation

class MacViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return MacButton()
    }
    
    func createLabel() -> Label {
        return MacLabel(text: "Mac Label")
    }
}
