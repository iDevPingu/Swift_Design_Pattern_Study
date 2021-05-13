//
//  NaverAccount.swift
//  Adapter Pattern
//
//  Created by Ick on 2021/05/13.
//

import Foundation

struct NaverAccount {
    var email: String
    var password: String
    var naverToken: String
}

class NaverAccountLogin {
    func login(email: String,
               password: String,
               completion: @escaping(NaverAccount?, LoginError?) -> Void) {
        if !email.hasSuffix("naver.com") {
            completion(nil, LoginError(errorMessage: "email 에러"))
            return
        }
        let token = "아무도 모르는 Naver 비밀 토큰"
        let user = NaverAccount(email: email, password: password, naverToken: token)
        completion(user, nil)
    }
}
