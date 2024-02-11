//
//  ViewController.swift
//  coordinator-pattern
//
//  Created by Eren Demir on 11.02.2024.
//

import UIKit

class MainViewController: UIViewController {
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        button.setTitle("Go to Detail", for: .normal)
        button.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)
        button.backgroundColor = .blue
        view.addSubview(button)
    }

    @objc func goToDetail() {
        coordinator?.goToDetailPage()
    }
}

extension MainViewController {
    static func instantiate() -> MainViewController {
        return MainViewController()
    }
}

