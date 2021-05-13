//
//  Singleton.swift
//  Singleton Pattern
//
//  Created by Ick on 2021/05/11.
//

import Foundation

// Singleton Class
class DBManager {
    static let shared = DBManager()
    
    public var database: [String]
    
    private init() {
        database = []
    }
    public func addData(data: String) {
        self.database.append(data)
    }
    public func deleteData(data: String) {
        if let index = self.database.firstIndex(of: data) {
            self.database.remove(at: index)
        } else {
            print("데이터가 없습니다.")
        }
    }
}
