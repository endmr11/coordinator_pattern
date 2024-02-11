//
//  Coordinator.swift
//  coordinator-pattern
//
//  Created by Eren Demir on 11.02.2024.
//

import Foundation
import UIKit

protocol Coordinator:AnyObject {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator] { get set }
    func start()
}
