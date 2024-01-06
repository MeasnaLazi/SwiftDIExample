//
//  AppDelegate.swift
//  SwiftDIExample
//
//  Created by Measna on 30/12/23.
//

import UIKit
import SwiftDI

@EnableConfiguration
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var classes: [InitializerDI.Type] {
        [
            UserRepositoryMock.self,
            UserRepositoryImpl.self,
            UserServiceImpl.self,
            UserServiceMock.self,
        ]
    }
    
    var protocols: [Protocol] {
        [
            UserService.self,
            UserRepository.self,
        ]
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Start!")
        
        let _ = #ConfigContext
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

