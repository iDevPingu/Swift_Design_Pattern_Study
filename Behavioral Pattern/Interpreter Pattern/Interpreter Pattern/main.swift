//
//  main.swift
//  Interpreter Pattern
//
//  Created by Ick on 2021/05/29.
//

import Foundation

// 음,, 이 예제는 인터프리터 패턴이라고 하기엔 좀 부족한 부분이 있는 듯 하여 수정이 필요합니다.

protocol IntegerExpression {
    func evaluate(_ context: IntegerContext) -> Int
    func replace(string: String, integerExpression: IntegerExpression) -> IntegerExpression
    func copied() -> IntegerExpression
}

final class IntegerContext {
    private var data: [String: Int] = [:]
    func lookup(name: String) -> Int {
        return self.data[name]!
    }
    func assign(expression: IntegerVariableExpression, value: Int) {
        self.data[expression.name] = value
    }
}

final class IntegerVariableExpression: IntegerExpression {
    let name: String
    init(name: String) {
        self.name = name
    }
    func evaluate(_ context: IntegerContext) -> Int {
        return context.lookup(name: self.name)
    }
    
    func replace(string: String, integerExpression: IntegerExpression) -> IntegerExpression {
        if name == self.name {
            return integerExpression.copied()
        } else {
            return IntegerVariableExpression(name: self.name)
        }
    }
    
    func copied() -> IntegerExpression {
        return IntegerVariableExpression(name: self.name)
    }
}

final class AddExpression: IntegerExpression {
    private var leftOperand: IntegerExpression
    private var rightOperand: IntegerExpression
    
    init(left: IntegerExpression, right: IntegerExpression) {
        self.leftOperand = left
        self.rightOperand = right
    }
    func evaluate(_ context: IntegerContext) -> Int {
        return self.leftOperand.evaluate(context) + self.rightOperand.evaluate(context)
    }
    
    func replace(string: String, integerExpression: IntegerExpression) -> IntegerExpression {
        return AddExpression(left: leftOperand.replace(string: string, integerExpression: integerExpression),
                             right: rightOperand.replace(string: string, integerExpression: integerExpression))
    }
    
    func copied() -> IntegerExpression {
        return AddExpression(left: self.leftOperand, right: self.rightOperand)
    }
}

var context = IntegerContext()

var a = IntegerVariableExpression(name: "a")
var b = IntegerVariableExpression(name: "b")
var c = IntegerVariableExpression(name: "c")

var expression = AddExpression(left: a, right: AddExpression(left: b, right: c))

context.assign(expression: a, value: 3)
context.assign(expression: b, value: 2)
context.assign(expression: c, value: 1)

var result = expression.evaluate(context)
print(result)
