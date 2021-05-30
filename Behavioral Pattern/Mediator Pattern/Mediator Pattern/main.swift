//
//  main.swift
//  Mediator Pattern
//
//  Created by Ick on 2021/05/30.
//

import Foundation

let checkBox = CheckBox()
let textField = TextField()
let profileUI = ProfileUI(checkBox: checkBox, textField: textField)

profileUI.checkBox.checkBoxClick()
profileUI.checkBox.checkBoxClick()

