//
//  Navigation.swift
//  Strategy Pattern
//
//  Created by Ick on 2021/06/30.
//

import Foundation
// Context
class Navigation {
    private var routeAlgorithm: Strategy?
    
    func execute() {
        self.routeAlgorithm?.algorithmExecute()
    }
    
    func setStrategy(strategy: Strategy) {
        self.routeAlgorithm = strategy
    }
}
