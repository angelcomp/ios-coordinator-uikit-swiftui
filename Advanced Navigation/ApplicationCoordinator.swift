//
//  ApplicationCoordinator.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import SwiftUI
import UIKit
import Combine

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    var childCoordinators = [Coordinator]()
    
    let hasSeenOnboarding = CurrentValueSubject<Bool, Never>(false)
    var subscriptions = Set<AnyCancellable>()
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        setupOnboardingValue()
        
        hasSeenOnboarding
            .removeDuplicates()
            .sink { [weak self] hasSeen in
            if hasSeen {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
            } else if let hasSeen = self?.hasSeenOnboarding {
                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeen)
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
                        
            }
            
        }.store(in: &subscriptions)

    }
    
    func setupOnboardingValue() {
            
        // storing and loading of state/data
        
        let key = "hasSeenOnboarding"
        let value = UserDefaults.standard.bool(forKey: key) //default of false
        hasSeenOnboarding.send(value)
        
        hasSeenOnboarding
            .filter({ $0 })
            .sink { (value) in
                UserDefaults.standard.setValue(value, forKey: key)
            }
            .store(in: &subscriptions)
        
    }
}
