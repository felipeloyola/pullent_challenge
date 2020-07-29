//
//  AppDelegate.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 27-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Override point for customization after application launch.
        let initialController = UINavigationController()
        initialController.setRootWireframe(HomeWireframe())

        self.window = UIWindow(frame: UIScreen.main.bounds)

        self.window?.rootViewController = initialController
        self.window?.makeKeyAndVisible()

        return true
    }
}
