//
//  RegisterCoordinator.swift
//  LoginPractice
//
//  Created by Chichek on 23.01.25.
//

import Foundation
import UIKit

class RegisterCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = RegisterViewController()
        navigationController.show(controller, sender: nil)
    }
    
    
}
