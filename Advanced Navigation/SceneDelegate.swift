//
//  SceneDelegate.swift
//  Advanced Navigation
//
//  Created by Angelica dos Santos on 25/01/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var appCoordinator: ApplicationCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let appCoordinator = ApplicationCoordinator(window)
            appCoordinator.start()
            self.appCoordinator = appCoordinator
            
            window.makeKeyAndVisible()
        }
    }
}

