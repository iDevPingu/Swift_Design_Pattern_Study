//
//  KakaoAccount.swift
//  Adapter Pattern
//
//  Created by Ick on 2021/05/13.
//

import Foundation

struct KakaoAccount {
    var email: String
    var password: String
    var kakaoToken: String
}


class KakaoAccountLogin {
    func login(email: String,
               password: String,
               completion: @escaping(KakaoAccount?, LoginError?) -> Void) {
        if !email.hasSuffix("kakao.com") {
            completion(nil, LoginError(errorMessage: "email 에러"))
            return
        }
        let token = "아무도 모르는 Kakao 비밀 토큰"
        let user = KakaoAccount(email: email, password: password, kakaoToken: token)
        completion(user, nil)
    }
}
