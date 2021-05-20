//
//  AvailableProduct.swift
//  Facade Pattern
//
//  Created by Ick on 2021/05/21.
//

import Foundation

// 재고 관리
class AvailableProduct {
    var productList: [Product: Int] = [:]
    
    init(productList: [Product: Int]) {
        self.productList = productList
    }
}
