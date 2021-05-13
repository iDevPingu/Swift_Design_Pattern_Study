//
//  Adapters.swift
//  Adapter Pattern
//
//  Created by Ick on 2021/05/13.
//

import Foundation

// Adapter
class NaverAccountAdapter: LoginService {
    
    private var authenticator = NaverAccountLogin()
    
    func login(email: String,
               password: String,
               success: @escaping (User?, Token?) -> Void,
               failure: @escaping (LoginError?) -> Void) {
        authenticator.login(email: email, password: password) { (naverAccount, error) in
            guard let naverAccount = naverAccount else {
                failure(error)
                return
            }
            
            let user = User(email: naverAccount.email,
                            password: naverAccount.password)
            let token = Token(value: naverAccount.naverToken)
            success(user, token)
        }
    }
}

class KakaoAccountAdapter: LoginService {
    
    private var authenticator = KakaoAccountLogin()
    
    func login(email: String,
               password: String,
               success: @escaping (User?, Token?) -> Void,
               failure: @escaping (LoginError?) -> Void) {
        authenticator.login(email: email, password: password) { (kakaoAccount, error) in
            guard let kakaoAccount = kakaoAccount else {
                failure(error)
                return
            }
            
            let user = User(email: kakaoAccount.email,
                            password: kakaoAccount.password)
            let token = Token(value: kakaoAccount.kakaoToken)
            success(user, token)
        }
    }
}
