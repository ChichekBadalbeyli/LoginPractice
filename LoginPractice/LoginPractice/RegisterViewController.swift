//
//  RegisterViewController.swift
//  LoginPractice
//
//  Created by Chichek on 23.01.25.
//

import UIKit

class RegisterViewController: BaseController {
    
    let welcomeLabel = UILabel()
    let usernameTextField = PaddedTextField()
    let emailTextField = PaddedTextField()
    let passwordTextField = PaddedTextField()
    let passwordRepeatTextField = PaddedTextField()
    let registerButton = UIButton()
    let registerLabel = UILabel()
    let facebookLogin = UIButton()
    let googleLogin = UIButton()
    let appleLogin = UIButton()
    let loginButton = UIButton()
    let iconView = UIStackView()
    let textFieldStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func configureUI() {
        welcomeLabel.translatesAutoresizingMaskIntoConstraints =  false
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordRepeatTextField.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerLabel.translatesAutoresizingMaskIntoConstraints = false
        facebookLogin.translatesAutoresizingMaskIntoConstraints = false
        googleLogin.translatesAutoresizingMaskIntoConstraints = false
        appleLogin.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        iconView.translatesAutoresizingMaskIntoConstraints=false
        textFieldStackView.translatesAutoresizingMaskIntoConstraints=false
        
        view.addSubview(welcomeLabel)
        welcomeLabelConfiguration()
        view.addSubview(registerButton)
        registerButtonConfiguration()
        view.addSubview(registerLabel)
        registerLabelConfiguration()

        view.addSubview(loginButton)
        loginButtonConfiguration()
        view.addSubview(iconView)
        iconViewConfigurtion()
        view.addSubview(textFieldStackView)
        textFieldStackViewConfiguration()
    }
    
    func welcomeLabelConfiguration() {
        welcomeLabel.text = "Hello! Register to get started"
        welcomeLabel.textColor = UIColor(red: 30 / 255, green: 35 / 255, blue: 44 / 255, alpha: 1)
        welcomeLabel.font = UIFont.systemFont(ofSize: 30, weight:.semibold)
        welcomeLabel.numberOfLines = 0
        welcomeLabel.contentMode = .scaleAspectFit
    }
    
    func usernameTextFieldConfiguration() {
        usernameTextField.placeholder = "Username"
        usernameTextField.textColor = UIColor(red: 131, green: 145, blue: 161, alpha: 1)
        usernameTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        usernameTextField.layer.cornerRadius = 8
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        usernameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        usernameTextField.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        usernameTextField.leftViewMode = .always
    }
    
    func emailTextFieldConfiguration() {
        emailTextField.placeholder = "Email"
        emailTextField.textColor = UIColor(red: 131, green: 145, blue: 161, alpha: 1)
        usernameTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        emailTextField.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        emailTextField.leftViewMode = .always
    }
    
    func passwordTextFieldConfiguration() {
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = UIColor(red: 131, green: 145, blue: 161, alpha: 1)
        passwordTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        passwordTextField.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        passwordTextField.leftViewMode = .always
    }
    
    func passwordRepeatConfiguration() {
        passwordRepeatTextField.placeholder = "Confirm password"
        passwordRepeatTextField.textColor = UIColor(red: 131, green: 145, blue: 161, alpha: 1)
        passwordRepeatTextField.backgroundColor = UIColor(red: 247 / 250, green: 248 / 250, blue: 249 / 250, alpha: 1)
        passwordRepeatTextField.layer.cornerRadius = 8
        passwordRepeatTextField.layer.borderWidth = 1
        passwordRepeatTextField.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        passwordRepeatTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 19))
        passwordRepeatTextField.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        passwordRepeatTextField.leftViewMode = .always
    }
    
    class PaddedTextField: UITextField {
        private let padding = UIEdgeInsets(top: 18, left: 20, bottom: 20, right: 18)
        
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
    
    func registerButtonConfiguration() {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = .black
        buttonConfiguration.title = "Register"
        buttonConfiguration.titleAlignment = .center
        buttonConfiguration.baseForegroundColor = .white
        buttonConfiguration.contentInsets = NSDirectionalEdgeInsets(top: 18, leading: 130, bottom: 18, trailing: 130)
        registerButton.configuration = buttonConfiguration
        registerButton.layer.cornerRadius = 8
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        registerButton.titleLabel?.textAlignment = .center
    }
    
    func registerLabelConfiguration() {
        registerLabel.text = "Or login with"
        registerLabel.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        registerLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    }
    
    func appleConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "apple")
        appleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        appleLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 15, leading: 40, bottom: 15, trailing: 40)
        appleLogin.configuration = config
    }
    
    func facebookConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "facebook")
        facebookLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        facebookLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 15, leading: 40, bottom: 15, trailing: 40)
        facebookLogin.configuration = config
    }
    
    func googleConfiguration() {
        var config = UIButton.Configuration.filled()
        config.baseBackgroundColor = .white
        config.image = UIImage(named: "google")
        googleLogin.backgroundColor = .white
        googleLogin.layer.borderColor = UIColor(red: 232/255, green: 236/255, blue: 244/255, alpha: 1).cgColor
        googleLogin.layer.borderWidth = 1
        config.contentInsets = NSDirectionalEdgeInsets (top: 15, leading: 40, bottom: 15, trailing: 40)
        googleLogin.configuration = config
    }
    
    func loginButtonConfiguration() {
        let firstPart = "Already have an account?"
        let secondPart = " Login now"
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 36/255, green: 40/255, blue: 44/255, alpha: 1),
            .backgroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15, weight: .thin)
            
        ]
        
        let secondAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 53/255, green: 194/255, blue: 193/255, alpha: 1),
            .backgroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 15, weight: .semibold),
            
        ]
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        loginButton.backgroundColor = .white
        
        let firstAttributedString = NSAttributedString(string: firstPart, attributes: firstAttributes)
        let secondAttributedString = NSAttributedString(string: secondPart, attributes: secondAttributes)
        
        let fullAttributedString = NSMutableAttributedString()
        fullAttributedString.append(firstAttributedString)
        fullAttributedString.append(secondAttributedString)
        
        loginButton.setAttributedTitle(fullAttributedString, for: .normal)
        loginButton.titleLabel?.textAlignment = .center
        loginButton.titleLabel?.numberOfLines = 0
    }
    
    @objc func loginButtonTapped() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController ?? UINavigationController())
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
        textFieldStackView.spacing = 12
        textFieldStackView.distribution = .fillEqually
        
        usernameTextFieldConfiguration()
        emailTextFieldConfiguration()
        passwordTextFieldConfiguration()
        passwordRepeatConfiguration()
        
        textFieldStackView.addArrangedSubview(usernameTextField)
        textFieldStackView.addArrangedSubview(emailTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
        textFieldStackView.addArrangedSubview(passwordRepeatTextField)
        //     forgotPasswordButton.contentHorizontalAlignment = .right
    }
    
    override func configureConstraent() {
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -19.28),
            //    welcomeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -609),
            // welcome.heightAnchor.constraint(equalToConstant: 78),
            
            textFieldStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 25),
            textFieldStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            textFieldStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            
            registerButton.topAnchor.constraint(equalTo: passwordRepeatTextField.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //registerButton.bottomAnchor.constraint(equalTo: registerLabel.topAnchor, constant: -20),
            
            registerLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 20),
            registerLabel.centerXAnchor.constraint(equalTo: registerButton.centerXAnchor),
            
            
            iconView.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 10),
            iconView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            iconView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 22),
            //iconView.bottomAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: -155),
            
            loginButton.leadingAnchor.constraint(equalTo: view
                .leadingAnchor, constant: 71),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -49),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25),
            
        ])
    }
}
