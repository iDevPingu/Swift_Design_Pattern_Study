//
//  main.swift
//  Singleton Pattern
//
//  Created by Ick on 2021/05/11.
//

import Foundation

print(DBManager.shared.database)
DBManager.shared.addData(data: "Hello")
print(DBManager.shared.database)


