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
//        textFieldStackView.addSubview(usernameTextField)
//        usernameTextFieldConfiguration()
//        textFieldStackView.addSubview(emailTextField)
//        emailTextFieldConfiguration()
//        textFieldStackView.addSubview(passwordTextField)
//        passwordTextFieldConfiguration()
//        textFieldStackView.addSubview(passwordRepeatTextField)
//        passwordRepeatConfiguration()
        view.addSubview(registerButton)
        registerButtonConfiguration()
        view.addSubview(registerLabel)
        registerLabelConfiguration()
//        iconView.addSubview(googleLogin)
//        googleConfiguration()
//        iconView.addSubview(appleLogin)
//        appleConfiguration()
//        iconView.addSubview(facebookLogin)
//        facebookConfiguration()
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
  //      welcomeLabel.numberOfLines = 0
        welcomeLabel.backgroundColor = .blue
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
        usernameTextField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
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
        emailTextField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
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
        passwordTextField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
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
        passwordRepeatTextField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        passwordRepeatTextField.leftViewMode = .always
    }
    
    class PaddedTextField: UITextField {
        private let padding = UIEdgeInsets(top: 18, left: 18.04, bottom: 18, right: 18)
        
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
        registerButton.layer.cornerRadius = 8
        registerButton.backgroundColor = UIColor(red: 30/255, green: 35/255, blue: 44/255, alpha: 1)
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        registerButton.titleLabel?.textAlignment = .center
    }
    
    func registerLabelConfiguration() {
        registerLabel.text = "Or login with"
        registerLabel.textColor = UIColor(red: 106/255, green: 112/255, blue: 124/255, alpha: 1)
        registerLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
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
    
    func loginButtonConfiguration() {
        let firstPart = "Already have an account?"
        let secondPart = " Login now"
        let firstAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 36/255, green: 40/255, blue: 44/255, alpha: 1),
            .font: UIFont.systemFont(ofSize: 14, weight: .thin)
        ]
        
        let secondAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(red: 53/255, green: 194/255, blue: 193/255, alpha: 1),
            .font: UIFont.systemFont(ofSize: 14, weight: .semibold),
            
        ]
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        let firstAttributedString = NSAttributedString(string: firstPart, attributes: firstAttributes)
        let secondAttributedString = NSAttributedString(string: secondPart, attributes: secondAttributes)
        
        let fullAttributedString = NSMutableAttributedString()
        fullAttributedString.append(firstAttributedString)
        fullAttributedString.append(secondAttributedString)
        
        loginButton.setAttributedTitle(fullAttributedString, for: .normal)
        loginButton.titleLabel?.textAlignment = .center
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
      //  textFieldStackView.distribution = .fillEqually
        textFieldStackView.backgroundColor = .brown

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
    
    //    override func configureConstraent() {
    //        
    //        NSLayoutConstraint.activate([
    //            welcomeLabel.widthAnchor.constraint(equalToConstant: 333.55),
    //            welcomeLabel.heightAnchor.constraint(equalToConstant: 78),
    //            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
    //            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            usernameTextField.widthAnchor.constraint(equalToConstant: 333.55),
    //            usernameTextField.heightAnchor.constraint(equalToConstant: 56),
    //            usernameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 235),
    //            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            emailTextField.widthAnchor.constraint(equalToConstant: 333.55),
    //            emailTextField.heightAnchor.constraint(equalToConstant: 56),
    //            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 303),
    //            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            passwordTextField.widthAnchor.constraint(equalToConstant: 333.55),
    //            passwordTextField.heightAnchor.constraint(equalToConstant: 56),
    //            passwordTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 371),
    //            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            passwordRepeatTextField.widthAnchor.constraint(equalToConstant: 333.55),
    //            passwordRepeatTextField.heightAnchor.constraint(equalToConstant: 56),
    //            passwordRepeatTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 439),
    //            passwordRepeatTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            registerButton.widthAnchor.constraint(equalToConstant: 333),
    //            registerButton.heightAnchor.constraint(equalToConstant: 56),
    //            registerButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 525),
    //            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            registerLabel.widthAnchor.constraint(equalToConstant: 110),
    //            registerLabel.heightAnchor.constraint(equalToConstant: 17),
    //            registerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 616),
    //            registerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 157.58)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            appleLogin.widthAnchor.constraint(equalToConstant: 114),
    //            appleLogin.heightAnchor.constraint(equalToConstant: 56),
    //            appleLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 655),
    //            appleLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 278.56)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            facebookLogin.widthAnchor.constraint(equalToConstant: 114.44),
    //            facebookLogin.heightAnchor.constraint(equalToConstant: 56),
    //            facebookLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 655),
    //            facebookLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32.22)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            googleLogin.widthAnchor.constraint(equalToConstant: 114.44),
    //            googleLogin.heightAnchor.constraint(equalToConstant: 56),
    //            googleLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 655),
    //            googleLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 155.4)
    //        ])
    //        
    //        NSLayoutConstraint.activate([
    //            loginButton.widthAnchor.constraint(equalToConstant: 255),
    //            loginButton.heightAnchor.constraint(equalToConstant: 21),
    //            loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 766),
    //            loginButton.leadingAnchor.constraint(equalTo: view
    //                .leadingAnchor, constant: 49)
    //        ])
    //    }
    //}
    override func configureConstraent() {
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.17),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -19.28),
            welcomeLabel.bottomAnchor.constraint(equalTo: textFieldStackView.topAnchor, constant: -32),
            // welcome.heightAnchor.constraint(equalToConstant: 78),
            
            textFieldStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 32),
            textFieldStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            textFieldStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            //textFieldStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -418),
            
            // usernameTextField.topAnchor.constraint(equalTo: textFieldStackView.topAnchor),
            //        usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            //        usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            //        
            //        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            //        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            //
            //        forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            //        forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            //  forgotPasswordButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor,constant: -30),
            
            
            registerButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 30),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            // loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -332),
            
            registerLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 35),
            registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            iconView.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 22),
            iconView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22),
            iconView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            // iconView.bottomAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: -155),
            
            //registerButton.topAnchor.constraint(equalTo: iconView.bottomAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: view
                .leadingAnchor, constant: 61),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -26),
            
            //        eyeButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            //        eyeButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -16),
            //        eyeButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -17),
            //        eyeButton.bottomAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 17)
            
        ])
    }
}
