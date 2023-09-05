//
//  RootViewModel.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import Foundation

// MVVM icin Model olusturuldu
class RootViewModel {
    
    // LoginStorageService Protokolunu kullanarak ViewModel icerisinde yaptigimiz islemi soyutlamada ve Check Login func'nunda kullandik
    // Oncelikle LoginStorageService protokolunu getirdik View Modele, init hatasindan sonra init'i de ekleriz
    private let loginStorageService : LoginStorageService
    
    // Delegate pattern'de kullanacagimiz icin RootViewModelOutput'u weak var olarak olusturduk
    weak var output: RootViewModelOutput?
     
    // LoginStorageService eklendikten sonra init'i ekledik
    init(loginStorageService: LoginStorageService, output: RootViewModelOutput? = nil) {
        self.loginStorageService = loginStorageService
        self.output = output
    }
    
    
    // Endustride User Defaults'ta tokenleri tutmak istemeyiz cunku hem guvenli degildir hem de MVVM yapisina uygun degildir ancak kod olarak bir problemi yoktur is gorecektir ama tokenler'i kontrol etmenin en dogru yolu degildir.
    func checkLogin() {
        
        if let accessToken = loginStorageService.getUserAccessToken(), !accessToken.isEmpty {
            // Eger token eslesmesi basarili ise main'e git
//            showMainVC()
            output?.showMainVC()
        } else {
            // Degilse kullanici login olsun
//            showLoginVC()
            output?.showLoginVC()
        }
    }
}
