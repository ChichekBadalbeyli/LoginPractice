//
//  LoginViewController.swift
//  LoginPractice
//
//  Created by Chichek on 22.01.25.
//

import UIKit

class LoginViewController: BaseController {
    
    let welcomeLabel = UILabel()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let forgotPasswordButton = UIButton()
    let loginButton = UIButton()
    let loginLabel = UILabel()
    let facebookLogin = UIButton()
    let googleLogin = UIButton()
    let appleLogin = UIButton()
    let registerButton = UIButton()
    let eyeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func configureUI() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints =  false
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        facebookLogin.translatesAutoresizingMaskIntoConstraints = false
        googleLogin.translatesAutoresizingMaskIntoConstraints = false
        appleLogin.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        welcomeLabelConfiguration()
        view.addSubview(usernameTextField)
        usernameTextFieldConfiguration()
        view.addSubview(passwordTextField)
        passwordTextFieldConfigure()
        view.addSubview(forgotPasswordButton)
        forgetPasswordConfiguration()
        view.addSubview(loginLabel)
        loginLabelConfiguration()
        view.addSubview(loginButton)
        loginButtonConfiguration()
        view.addSubview(facebookLogin)
        facebookConfiguration()
        view.addSubview(googleLogin)
        googleConfiguration()
        view.addSubview(appleLogin)
        appleConfiguration()
        view.addSubview(registerButton)
        registerButtonConfiguration()
    }
    
    func welcomeLabelConfiguration() {
        welcomeLabel.text = "Welcome back! Glad to see you, Again!"
        welcomeLabel.textColor = UIColor(red: 30 / 255, green: 35 / 255, blue: 44 / 255, alpha: 1)
        welcomeLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        welcomeLabel.numberOfLines = 0
    }
    
    func usernameTextFieldConfiguration() {
        usernameTextField.placeholder = "Enter your email"
        usernameTextField.textColor = UIColor(red: 131, green: 145, blue: 161, alpha: 1)
        usernameTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        usernameTextField.layer.cornerRadius = 8
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        usernameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        usernameTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        usernameTextField.leftViewMode = .always
    }
    
    func passwordTextFieldConfigure() {
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.textColor = UIColor(red: 131/250, green: 145/250, blue: 161/250, alpha: 1)
        passwordTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        passwordTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        passwordTextField.leftViewMode = .always
        eyeButtonConfiguration()
        view.addSubview(eyeButton)
    }
    
    func eyeButtonConfiguration() {
        eyeButton.setImage(UIImage(named: "fluent_eye"), for: .normal)
        eyeButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
    }
    
    @objc func togglePasswordVisibility() {
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    func forgetPasswordConfiguration() {
        forgotPasswordButton.setTitle("Forget password?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1), for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        forgotPasswordButton.titleLabel?.textAlignment = .right
    }
    
    func loginButtonConfiguration() {
        loginButton.layer.cornerRadius = 8
        loginButton.backgroundColor = UIColor(red: 30/255, green: 35/255, blue: 44/255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        loginButton.titleLabel?.textAlignment = .center
    }
    
    func loginLabelConfiguration() {
        loginLabel.text = "Or login with"
        loginLabel.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        loginLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    }
    
    func appleConfiguration() {
        appleLogin.backgroundColor = .white
        appleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        appleLogin.layer.borderWidth = 1
        appleLogin.setImage(UIImage(named: "apple"), for: .normal)
    }
    
    func facebookConfiguration() {
        facebookLogin.backgroundColor = .white
        facebookLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        facebookLogin.layer.borderWidth = 1
        facebookLogin.setImage(UIImage(named: "google"), for: .normal)
    }
    
    func googleConfiguration() {
        googleLogin.backgroundColor = .white
        googleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        googleLogin.layer.borderWidth = 1
        googleLogin.setImage(UIImage(named: "facebook"), for: .normal)
    }
    
    func registerButtonConfiguration() {
        let firstPart = "Don’t have an account?"
        let secondPart = " Register Now"
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 36/255, green: 40/255, blue: 44/255, alpha: 1),
            .font: UIFont.systemFont(ofSize: 15, weight: .thin)
        ]
        
        let secondAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 53/255, green: 194/255, blue: 193/255, alpha: 1),
            .font: UIFont.systemFont(ofSize: 15, weight: .semibold),
            
        ]
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        
        let firstAttributedString = NSAttributedString(string: firstPart, attributes: firstAttributes)
        let secondAttributedString = NSAttributedString(string: secondPart, attributes: secondAttributes)
        
        let fullAttributedString = NSMutableAttributedString()
        fullAttributedString.append(firstAttributedString)
        fullAttributedString.append(secondAttributedString)
        
        registerButton.setAttributedTitle(fullAttributedString, for: .normal)
        registerButton.titleLabel?.textAlignment = .center
    }
    
    @objc func registerButtonTapped() {
        let coordinator = RegisterCoordinator (navigationController: self.navigationController ?? UINavigationController())
        coordinator.start()
    }
    
    
    override func configureConstraent() {
        
        NSLayoutConstraint.activate([
            welcomeLabel.widthAnchor.constraint(equalToConstant: 280),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 78),
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            
            usernameTextField.widthAnchor.constraint(equalToConstant: 331),
            usernameTextField.heightAnchor.constraint(equalToConstant: 56),
            usernameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 235),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            
            passwordTextField.widthAnchor.constraint(equalToConstant: 331),
            passwordTextField.heightAnchor.constraint(equalToConstant: 56),
            passwordTextField.topAnchor.constraint(equalTo: view.topAnchor, constant:   306),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            
            forgotPasswordButton.widthAnchor.constraint(equalToConstant: 111),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 17),
            forgotPasswordButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 377),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 242),
            
            loginButton.widthAnchor.constraint(equalToConstant: 331),
            loginButton.heightAnchor.constraint(equalToConstant: 56),
            loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 424),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            
            loginLabel.widthAnchor.constraint(equalToConstant: 84),
            loginLabel.heightAnchor.constraint(equalToConstant: 17),
            loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 515),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 146),
            
            appleLogin.widthAnchor.constraint(equalToConstant: 105),
            appleLogin.heightAnchor.constraint(equalToConstant: 56),
            appleLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 554),
            appleLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 248),
            
            facebookLogin.widthAnchor.constraint(equalToConstant: 105),
            facebookLogin.heightAnchor.constraint(equalToConstant: 56),
            facebookLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 554),
            facebookLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            
            googleLogin.widthAnchor.constraint(equalToConstant: 105),
            googleLogin.heightAnchor.constraint(equalToConstant: 56),
            googleLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 554),
            googleLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            
            registerButton.widthAnchor.constraint(equalToConstant: 254),
            registerButton.heightAnchor.constraint(equalToConstant: 21),
            registerButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 765),
            registerButton.leadingAnchor.constraint(equalTo: view
                .leadingAnchor, constant: 61),
            
            eyeButton.widthAnchor.constraint(equalToConstant: 22),
            eyeButton.heightAnchor.constraint(equalToConstant: 22),
            eyeButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            eyeButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -16)
        ])
    }
}
