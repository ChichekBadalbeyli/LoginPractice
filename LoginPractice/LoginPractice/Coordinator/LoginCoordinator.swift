//
//  CoordinatorController.swift
//  LoginPractice
//
//  Created by Chichek on 21.01.25.
//

import Foundation
import UIKit

class LoginCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = LoginViewController()
        navigationController.show(controller, sender: nil)
    }
    
}
