//
//  ViewController.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import UIKit

// RootViewOutput'u delege olarak ayarladiktan sonra View Modelden gelecek output'a gore showMainVC ve showLoginVC funclari calistirilacaktir
class RootViewController: UIViewController, RootViewModelOutput {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
    }
    
    func showMainVC() {
        let mainVC = MainViewController()
        navigationController?.present(mainVC, animated: true)
    }
    
    func showLoginVC() {
        let loginVC = LoginViewController()
        navigationController?.present(loginVC, animated: true)
    }


}

