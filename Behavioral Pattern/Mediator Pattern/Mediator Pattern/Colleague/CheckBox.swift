//
//  CheckBox.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

// Collegue
class CheckBox: Colleague {
    var isSelect: Bool = false {
        didSet {
            if isSelect {
                print("CheckBox 선택")
            } else {
                print("CheckBox 선택 해제")
            }
        }
    }
    
    func checkBoxClick() {
        self.isSelect = !self.isSelect
        if self.isSelect {
            self.mediator?.notify(sender: self, event: .checkBoxSelect)
        } else {
            self.mediator?.notify(sender: self, event: .checkBoxUnselect)
        }
    }
}
