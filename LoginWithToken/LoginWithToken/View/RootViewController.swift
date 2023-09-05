//
//  ViewController.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import UIKit

class RootViewController: UIViewController {

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

