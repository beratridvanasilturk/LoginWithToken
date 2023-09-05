//
//  LoginWithTokenTests.swift
//  LoginWithTokenTests
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import XCTest
@testable import LoginWithToken

final class LoginWithTokenTests: XCTestCase {

    private var viewModel : RootViewModel!
    // Mock datalarin classlarini ekledikten sonra setUpWithError func icerisinde atamak icin kullanilir
    private var loginStorageService: MockLoginStorageService!
    private var output: MockRootViewModelOutput!
    
    override func setUpWithError() throws {
        
        loginStorageService = MockLoginStorageService()
        // ViewModel'i init ettik
        viewModel = RootViewModel(loginStorageService: loginStorageService)
        output = MockRootViewModelOutput()
        
        // ViewModel her cikti yaptiginda 2 satir yukaridaki viewModel = RootVM .. 'da yakalayalim ve output icerisindeki diziden veya listeden kontrol edebilelim diye bu atamayi gerceklestirdik
        viewModel.output = output
        
    }

    override func tearDownWithError() throws {
        
        viewModel = nil
        loginStorageService = nil
        
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

// Output'u da Mock etmemiz gereklidir, stubslari otomatik hatadan aldik
class MockRootViewModelOutput : RootViewModelOutput {
    
    enum Check {
        case loginVC
        case mainVC
    }
    
    var check : [Check] = []
    
    func showMainVC() {
        check.append(.mainVC)
    }
    func showLoginVC() {
        check.append(.loginVC)
    }
}


