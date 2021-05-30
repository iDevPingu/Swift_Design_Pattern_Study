//
//  ProfileUI.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Concrete Mediator
class ProfileUI: Mediator {
    var checkBox: CheckBox
    var textField: TextField
    
    init(checkBox: CheckBox, textField: TextField) {
        self.checkBox = checkBox
        self.textField = textField
        
        self.checkBox.setMediator(mediator: self)
        self.textField.setMediator(mediator: self)
    }
    
    func notify(sender: Colleague, event: EventType) {
        switch event {
        case .checkBoxSelect:
            self.textField.isHidden = false
        case .checkBoxUnselect:
            self.textField.isHidden = true
        }
    }
}
