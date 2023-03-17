//
//  AppDelegate.swift
//  taskList
//
//  Created by Елена Логинова on 17.03.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = UINavigationController(rootViewController: TaskListViewController())
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        StorageManager.shared.saveContext()
    }

}
