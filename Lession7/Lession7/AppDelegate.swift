//
//  AppDelegate.swift
//  Lession7
//
//  Created by ThanhLong on 3/31/18.
//  Copyright © 2018 ThanhLong. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        let center = UNUserNotificationCenter.current()
//        let option : UNAuthorizationOptions = [UNAuthorizationOptions.alert,UNAuthorizationOptions.sound]
//        center.getNotificationSettings { (settings) in
//            if settings.authorizationStatus != .authorized {
//               //no allows
//            }
//        }
//        center.requestAuthorization(options: option) { (grandt, error) in
//            if !grandt {
//                print("Wrong!")
//            }
//        }
        // Override point for customization after application launch.
        UNUserNotificationCenter.current().delegate = self
        config()
        Util.copy(fileName: "database.sqlite")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    private func config(){
        let action1 = UNNotificationAction(identifier: "action1", title: "Action1", options: .foreground)
        let action2 = UNNotificationAction(identifier: "action2", title: "Action2", options: .foreground)
        let category = UNNotificationCategory(identifier: "categorydemo", actions: [action1,action2], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
    }
}
extension AppDelegate: UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler(.alert)
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Swift.Void){
        switch response.actionIdentifier {
        case "action1":
            print("action1")
        case "action2":
            print("action2")
        default:
            break
        }
    }
}

