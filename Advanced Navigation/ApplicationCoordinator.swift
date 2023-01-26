//
//  ApplicationCoordinator.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import SwiftUI
import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
//        let onboardingCoordinator = OnboardingCoordinator()
//        onboardingCoordinator.start()
//        self.childCoordinators = [onboardingCoordinator]
//        window.rootViewController = onboardingCoordinator.rootViewController
        
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        self.childCoordinators = [mainCoordinator]
        window.rootViewController = mainCoordinator.rootViewController
    }
    
    
}
