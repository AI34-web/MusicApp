//
//  SceneDelegate.swift
//  MusicApp
//
//  Created by Artyom Ivanov on 03.10.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
          
        // view controllers
        let playerVC = DIContainer().resolveMusicModule()
        let youLikeVC = YouLikeMusicVC()
        
        // navigations controllers
        let playerNavController = UINavigationController(rootViewController: playerVC)
        let youLikeNavController = UINavigationController(rootViewController: youLikeVC)
        
        // tab-bar
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [playerNavController, youLikeNavController]
        
        playerNavController.tabBarItem = UITabBarItem(
            title: "News",
            image: UIImage(systemName: "newspaper"),
            tag: 0
        )
        
        youLikeNavController.tabBarItem = UITabBarItem(
            title: "Saved",
            image: UIImage(systemName: "bookmark"),
            tag: 1
        )
        
        tabBarController.tabBar.tintColor = .systemYellow
        tabBarController.tabBar.unselectedItemTintColor = .white
//        tabBarController.tabBar.barTintColor = .systemPink
        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.backgroundColor = .purple
        
        window.rootViewController = tabBarController
        
        self.window = window
        self.window?.makeKeyAndVisible()
    }
    
}

