//
//  CoordinatorProtocol.swift
//  LoginPractice
//
//  Created by Chichek on 21.01.25.
//

import Foundation
import UIKit

protocol CoordinatorProtocol {
    var navigationController: UINavigationController {get set}
    func start()
}
