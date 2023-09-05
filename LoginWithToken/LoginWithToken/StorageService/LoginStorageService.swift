//
//  LoginStorageService.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import Foundation

// Veriyi Yani Token'i nerede kaydetmek istiyorsak bu StoreService dosyasi icerisinde tutacagiz, bu internetten cekme olabilirdi UserDefaults'ta tutma veya CoreData'da tutma vs olabilirdi.

protocol LoginStorageService {
        
    // AccesToken degiskenin ismini burada tutacagiz / Mock Data olarak dusunulebilir
    var userAccessTokenKey : String {get}
    // Endrustride bu iki func kullanilacaktir set ve getUserAccessToken
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
    
}
