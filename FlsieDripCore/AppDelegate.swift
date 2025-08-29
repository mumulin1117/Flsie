//
//  AppDelegate.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.


import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        restockAlert()
        SwiftyStoreKit.completeTransactions(atomically: true) { hike in
            for veganLeather in hike {
                
                if veganLeather.transaction.transactionState == .purchased ||
                    veganLeather.transaction.transactionState == .restored{
                    if veganLeather.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(veganLeather.transaction)
                    }
                }
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
      
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        
        let ethicalProduction = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        UserDefaults.standard.set(ethicalProduction, forKey: "heritageBddrand")
        
    }
    
    func restockAlert()  {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { catholeBury, _ in
            if catholeBury {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
}

