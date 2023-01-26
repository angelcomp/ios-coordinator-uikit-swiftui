//
//  FirstTabCoordinator.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import UIKit

class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "first title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
}
