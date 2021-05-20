//
//  Facade.swift
//  Facade Pattern
//
//  Created by Ick on 2021/05/21.
//

import Foundation

class OrderFacade {
    let productDB: AvailableProduct
    let orderDB: OrderList
    
    init(productDB: AvailableProduct, orderDB: OrderList) {
        self.productDB = productDB
        self.orderDB = orderDB
    }
    
    func order(product: Product, customer: Customer) {
        print("\(customer.name)님이 \(product.name)를 주문하셨습니다.")
        if let count = self.productDB.productList[product] {
            if count == 0 {
                print("\(product.name) 재고가 없습니다.\n")
            } else if count > 0 {
                self.productDB.productList[product] = count - 1
                
                var orderList = self.orderDB.orderList[customer, default: []]
                orderList.append(product)
                self.orderDB.orderList[customer] = orderList
                print("\(customer.name)님의 \(product.name)를 주문 접수 완료!\n")
            }
        } else {
            print("존재하지 않는 제품입니다.\n")
        }
    }
}
