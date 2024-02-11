//
//  MainCoordinator.swift
//  coordinator-pattern
//
//  Created by Eren Demir on 11.02.2024.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children = [Coordinator]()

    func start() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: false)
    }

    func goToDetailPage() {
        let child = DetailCoordinator(navigationController: navigationController)
        children.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in children.enumerated() {
            if coordinator === child {
                print("Bu \(child.debugDescription) coordinator kaldırıldı")
                children.remove(at: index)
                break
            }
        }
    }
}
