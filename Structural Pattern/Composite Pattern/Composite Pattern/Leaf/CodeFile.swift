//
//  CodeFile.swift
//  Composite Pattern
//
//  Created by Ick on 2021/05/18.
//

import Foundation

final class CodeFile: FileComponent {
    var size: Int
    var name: String
    var language: String
    
    func open() {
        print("\(self.name) Code Language : \(self.language)")
    }
    
    func getSize() -> Int {
        return self.size
    }
    
    init(size: Int, name: String, language: String) {
        self.size = size
        self.name = name
        self.language = language
    }
}
