//
//  LoginViewController.swift
//  LoginPractice
//
//  Created by Chichek on 22.01.25.
//

import UIKit

class LoginViewController: BaseController {
    
    let welcome = UILabel()
    let usernameTextField = PaddedTextField()
    let passwordTextField = PaddedTextField()
    let forgotPasswordButton = UIButton()
    let loginButton = UIButton()
    let loginLabel = UILabel()
    let facebookLogin = UIButton()
    let googleLogin = UIButton()
    let appleLogin = UIButton()
    let registerButton = UIButton()
    let eyeButton = UIButton()
    let iconView = UIStackView()
    let textFieldStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func configureUI() {
        welcome.translatesAutoresizingMaskIntoConstraints =  false
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
        iconView.translatesAutoresizingMaskIntoConstraints = false
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcome)
        welcomeLabelConfiguration()
        view.addSubview(loginLabel)
        loginLabelConfiguration()
        view.addSubview(loginButton)
        loginButtonConfiguration()
        view.addSubview(registerButton)
        registerButtonConfiguration()
        view.addSubview(iconView)
        iconViewConfigurtion()
        view.addSubview(textFieldStackView)
        textFieldStackViewConfiguration()
    }
    
    func welcomeLabelConfiguration() {
        welcome.text = "Welcome back! Glad to see you, Again!"
        welcome.textColor = UIColor(red: 30 / 255, green: 35 / 255, blue: 44 / 255, alpha: 1)
        welcome.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        welcome.numberOfLines = 0
    }
    
    func usernameTextFieldConfiguration() {
        usernameTextField.placeholder = "Enter your email"
        usernameTextField.textColor = UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1)
        usernameTextField.backgroundColor = UIColor(red: 247 / 255, green: 248 / 255, blue: 249 / 255, alpha: 1)
        usernameTextField.layer.cornerRadius = 8
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = UIColor(red: 232 / 255, green: 236 / 255, blue: 244 / 255, alpha: 1).cgColor
        usernameTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        usernameTextField.textColor =  .black
    }

    func passwordTextFieldConfigure() {
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.textColor = UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1)
        passwordTextField.backgroundColor = UIColor(red: 247 / 255, green: 248 / 255, blue: 249 / 255, alpha: 1)
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderColor = UIColor(red: 232 / 255, green: 236 / 255, blue: 244 / 255, alpha: 1).cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        eyeButtonConfiguration()
        view.addSubview(eyeButton)
    }
    
    class PaddedTextField: UITextField {
        private let padding = UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18)
        
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
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
        forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        forgotPasswordButton.titleLabel?.numberOfLines = 0
    }
    
    func loginButtonConfiguration() {
        var buttonConfiguration = UIButton.Configuration.filled()
            buttonConfiguration.baseBackgroundColor = .black
            buttonConfiguration.title = "Login"
        buttonConfiguration.titleAlignment = .center
            buttonConfiguration.baseForegroundColor = .white
        
            loginButton.configuration = buttonConfiguration
            loginButton.layer.cornerRadius = 8
            loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)

    }
    
    func loginLabelConfiguration() {
        loginLabel.text = "Or login with"
        loginLabel.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        loginLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
    }
    
    func appleConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "apple")
        appleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        appleLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 16.18, leading: 38.18, bottom: 16.18, trailing: 38.18)
        appleLogin.configuration = config
    }
    
    func facebookConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "facebook")
        facebookLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        facebookLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 16.18, leading: 38.18, bottom: 16.18, trailing: 38.18)
        facebookLogin.configuration = config
    }
    
    func googleConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "google")
        googleLogin.backgroundColor = .white
        googleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        googleLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 16.18, leading: 38.18, bottom: 16.18, trailing: 38.18)
        googleLogin.configuration = config
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
        registerButton.titleLabel?.numberOfLines = 0
    }
    
    @objc func registerButtonTapped() {
        let coordinator = RegisterCoordinator (navigationController: self.navigationController ?? UINavigationController())
        coordinator.start()
    }
    
    func  iconViewConfigurtion() {
        iconView.axis = .horizontal
        iconView.spacing = 8
        iconView.distribution = .fillEqually
        
        appleConfiguration()
        facebookConfiguration()
        googleConfiguration()
        
        iconView.addArrangedSubview(appleLogin)
        iconView.addArrangedSubview(facebookLogin)
        iconView.addArrangedSubview(googleLogin)
    }
    
    func textFieldStackViewConfiguration() {
        textFieldStackView.axis = .vertical
        textFieldStackView.spacing = 15

        usernameTextFieldConfiguration()
        passwordTextFieldConfigure()
        forgetPasswordConfiguration()
        
        textFieldStackView.addArrangedSubview(usernameTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
        textFieldStackView.addArrangedSubview(forgotPasswordButton)
        forgotPasswordButton.contentHorizontalAlignment = .right
    }
    
    override func configureConstraent() {
        
        NSLayoutConstraint.activate([
            
            welcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            welcome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            welcome.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -73),

            textFieldStackView.topAnchor.constraint(equalTo: welcome.bottomAnchor, constant: 32),
            textFieldStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            textFieldStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),

            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),

            forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            
            loginButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 15),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            loginLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            iconView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 35),
            iconView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            iconView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),

            registerButton.leadingAnchor.constraint(equalTo: view
                .leadingAnchor, constant: 61),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -26),
            
            eyeButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            eyeButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -16),
            eyeButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -17),
            eyeButton.bottomAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 17)
            
        ])
    }
}
