//
//  ViewController.swift
//  LoginWithToken
//
//  Created by Berat Rıdvan Asiltürk on 5.09.2023.
//

import UIKit

// RootViewOutput'u delege olarak ayarladiktan sonra View Modelden gelecek output'a gore showMainVC ve showLoginVC funclari calistirilacaktir. Bunun icin de View Model'in enjekte etmemiz gereklidir
class RootViewController: UIViewController, RootViewModelOutput {

    // ViewModel enjekte edildikten sonra init ve required init'i cagrilmasi gereklidir
    private var viewModel: RootViewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        viewModel.checkLogin()
        
    }
    
    //
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        // son olarak viewModel'in output'unu self'e esitleriz cunku kendisi artik delege aldigi icin bir rootViewModelOutput'tur
        viewModel.output = self
    }
    
    // required init'i hata mesajindan otomatik doldurduk
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

