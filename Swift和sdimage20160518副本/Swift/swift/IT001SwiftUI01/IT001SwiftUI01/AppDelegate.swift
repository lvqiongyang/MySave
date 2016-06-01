//
//  AppDelegate.swift
//  IT001SwiftUI01
//
//  Created by Box on 15/10/29.
//  Copyright © 2015年 Box. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.whiteColor()
        
        let vc = ViewController()
        
        let rootNav = UINavigationController.init(rootViewController: vc)
        
        self.window?.rootViewController = rootNav
        
        
        self.window!.makeKeyAndVisible()
        return true
    }

}








