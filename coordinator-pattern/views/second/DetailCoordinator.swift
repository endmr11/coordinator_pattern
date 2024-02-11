//
//  SecondMainCoordinator.swift
//  coordinator-pattern
//
//  Created by Eren Demir on 11.02.2024.
//

import Foundation
import UIKit

class DetailCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children = [Coordinator]()
    weak var parentCoordinator: MainCoordinator?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = DetailViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func didFinishDetail() {
        parentCoordinator?.childDidFinish(self)
    }
}
