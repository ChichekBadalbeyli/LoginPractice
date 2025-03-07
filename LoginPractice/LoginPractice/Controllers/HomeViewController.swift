//
//  LoginViewController.swift
//  LoginPractice
//
//  Created by Chichek on 21.01.25.
//

import UIKit

class HomeViewController: BaseController {
    
    let image = UIImageView(image: UIImage(named: "LoginImage"))
    let loginButton = UIButton()
    let registerButton = UIButton()
    let guest = UIButton()
    let logo = UIImageView(image: UIImage(named: "Branding"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func configureUI() {
        image.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        guest.translatesAutoresizingMaskIntoConstraints = false
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(image)
        view.addSubview(loginButton)
        loginButtonConfiguration()
        view.addSubview(registerButton)
        registerButtonConfiguration()
        view.addSubview(guest)
        guestConfiguration()
        view.addSubview(logo)
    }
    
    func loginButtonConfiguration(){
        loginButton.backgroundColor = .black
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    func registerButtonConfiguration() {
        registerButton.backgroundColor = .white
        registerButton.setTitleColor(.black, for: .normal)
        registerButton.setTitle("Register", for: .normal)
        registerButton.layer.cornerRadius = 8
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.black.cgColor
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
    }
    
    func guestConfiguration() {
        guest.setTitle("Continue as a guest?", for: .normal)
        guest.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        guest.setTitleColor(UIColor (red: 53 / 255, green: 194 / 255, blue: 193 / 255, alpha: 1 ), for: .normal)
    }
    override func configureConstraent() {
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 420),
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 117),
            logo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -116.87),
            
            loginButton.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            guest.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10),
            guest.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            guest.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -30)
        ])
    }
}
extension HomeViewController {
    
    @objc func registerButtonTapped() {
        let coordinator = RegisterCoordinator (navigationController: self.navigationController ?? UINavigationController())
        coordinator.start()
    }
    
    @objc func loginButtonTapped() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController ?? UINavigationController())
        coordinator.start()
        
    }
    
}
