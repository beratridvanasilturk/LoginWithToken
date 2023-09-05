//
//  LoginWithTokenTests.swift
//  LoginWithTokenTests
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import XCTest
@testable import LoginWithToken

final class LoginWithTokenTests: XCTestCase {

    weak var viewModel : RootViewModel!
    
    override func setUpWithError() throws {
        
        // ViewModel'i init ettik
        viewModel = RootViewModel(loginStorageService: <#T##LoginStorageService#>)
        
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {

    }
}

// Mock clasimiz eklendikten sonra stublari otomatik hatadan cektik
class MockLoginStorageService : LoginStorageService {
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    
    var storage: [String : String] = [:]
    
    // UserDefaults'u herhangi bir sozlukle beraber mock yani taklid ediyoruz bu projemizde bu iki func ile
    func setUserAccessToken(token: String) {
        // Ona deger olarak verilen token'a userAccessTokenKey'i koyduk
        storage[userAccessTokenKey] = token
    }
    func getUserAccessToken() -> String? {
        // Istenilen anahtari vererek degeri almaya calisacagiz
        return storage[userAccessTokenKey]
    }
}


