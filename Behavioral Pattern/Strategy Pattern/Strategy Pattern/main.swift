//
//  main.swift
//  Strategy Pattern
//
//  Created by Ick on 2021/06/30.
//

import Foundation

let navigation = Navigation()
navigation.setStrategy(strategy: CarRoute())
navigation.execute()

navigation.setStrategy(strategy: WalkRoute())
navigation.execute()

navigation.setStrategy(strategy: BikeRoute())
navigation.execute()


