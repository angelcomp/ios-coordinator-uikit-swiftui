//
//  OnboardingCoordinator.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import SwiftUI

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        
        rootViewController = UIHostingController(rootView: view)
    }
}
