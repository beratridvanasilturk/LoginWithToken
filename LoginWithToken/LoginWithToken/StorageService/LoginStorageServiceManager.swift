//
//  LoginStorageServiceManager.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import Foundation

// Ismini LoginStorageServiceImpl seklinde de olusturabilirdik impl: implementation (uygulama)
// Bu sinifimiz Protokolu uygulayan siniftir
class LoginStorageServiceManager: LoginStorageService {
    
    private var storage = UserDefaults.standard
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    // Kaydetme islemi
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccessTokenKey
        )
    }
    // Cekme islemi
    func getUserAccessToken() -> String? {
        return storage.string(forKey: userAccessTokenKey)
    }
    
    
    
    
}
