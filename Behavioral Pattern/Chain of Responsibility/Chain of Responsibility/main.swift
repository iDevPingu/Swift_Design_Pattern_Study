//
//  main.swift
//  Chain of Responsibility
//
//  Created by Ick on 2021/05/23.
//

import Foundation

let client = Client()

let appleService = MainAppleServiceHandler()
let mobileService = MobileServiceHandler()
let iPhoneService = IPhoneServiceHandler()

client.addHandler(handler: appleService)
client.addHandler(handler: mobileService)
client.addHandler(handler: iPhoneService)

print(client.request(request: "iPhone"))
print(client.request(request: "iPad"))

let iPadService = IPadeServiceHandler()
client.addHandler(handler: iPadService)
print(client.request(request: "iPad"))
