//
//  AppDelegate.swift
//  GestorTareas
//
//  Created by Carlos Gonzalez on 08/08/2019.
//  Copyright © 2019 Carlos Gonzalez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        TaskManager.sharedInstance.load()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        TaskManager.sharedInstance.save()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        TaskManager.sharedInstance.save()
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
         TaskManager.sharedInstance.load()
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
         TaskManager.sharedInstance.load()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
        TaskManager.sharedInstance.save()
        
    }


}

