//
//  RootViewModel.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import Foundation

// MVVM icin Model olusturuldu
class RootViewModel {
    
    // Delegate pattern'de kullanacagimiz icin RootViewModelOutput'u weak var olarak olusturduk
    weak var output: RootViewModelOutput?
     
    
    
    // Endustride User Defaults'ta tokenleri tutmak istemeyiz cunku hem guvenli degildir hem de MVVM yapisina uygun degildir ancak kod olarak bir problemi yoktur is gorecektir ama tokenler'i kontrol etmenin en dogru yolu degildir.
    func checkLogin() {
        
        if let accessToken = UserDefaults.standard.string(forKey: "ACCESS_TOKEN"), !accessToken.isEmpty {
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
