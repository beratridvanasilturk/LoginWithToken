//
//  RootViewModelOutput.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import Foundation

// Delegate olarak kullanabilmek icin AnyObject seklinde atandi
protocol RootViewModelOutput: AnyObject {
    
    func showMainVC()
    func showLoginVC()
    
}
