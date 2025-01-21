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
        loginButton.backgroundColor = .black
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 8
        view.addSubview(registerButton)
        registerButton.backgroundColor = .white
        registerButton.setTitleColor(.black, for: .normal)
        registerButton.setTitle("Register", for: .normal)
        registerButton.layer.cornerRadius = 8
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = UIColor.black.cgColor
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)

        view.addSubview(guest)
        
        guest.setTitle("Continue as a guest?", for: .normal)
        guest.setTitleColor(UIColor (red: 53 / 255, green: 194 / 255, blue: 193 / 255, alpha: 1 ), for: .normal)
//        guest.addTarget(self, action: #selector(guestButtonTapped), for: .touchUpInside)
        view.addSubview(logo)
    }
    
    override func configureConstraent() {
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 448),
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 117),
            logo.widthAnchor.constraint(equalToConstant: 141.13),
            logo.heightAnchor.constraint(equalToConstant: 99.03),
            
            loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 591),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            loginButton.heightAnchor.constraint(equalToConstant: 56),
            loginButton.widthAnchor.constraint(equalToConstant: 331),
            
            registerButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 662),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            registerButton.heightAnchor.constraint(equalToConstant: 56),
            registerButton.widthAnchor.constraint(equalToConstant: 331),
            
            guest.topAnchor.constraint(equalTo: view.topAnchor, constant: 764),
            guest.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 121),
            guest.widthAnchor.constraint(equalToConstant: 133),
            guest.heightAnchor.constraint(equalToConstant: 18)
            
        ])
    }
    

}
extension HomeViewController {
    
    @objc func registerButtonTapped() {
        let coordinator = CoordinatorController (navigationController: self.navigationController ?? UINavigationController())
        coordinator.start()
    }
    
    
}
