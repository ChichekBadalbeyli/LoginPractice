//
//  CoordinatorController.swift
//  LoginPractice
//
//  Created by Chichek on 21.01.25.
//

import Foundation
import UIKit

class CoordinatorController: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController.show(controller, sender: nil)
   
    }
    
}
