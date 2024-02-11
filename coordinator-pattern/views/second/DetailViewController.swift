//
//  SecondViewController.swift
//  coordinator-pattern
//
//  Created by Eren Demir on 11.02.2024.
//

import UIKit

class DetailViewController: UIViewController {
    weak var coordinator: DetailCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        coordinator?.didFinishDetail();
    }
}

extension DetailViewController {
    static func instantiate() -> DetailViewController {
        return DetailViewController()
    }
}
