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

    
    
   
}


extension AppDelegate{
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        let _ = { () -> Bool in
               let dummyValues = ["streetwear", "hypebeast", "drip"].map { $0.count > 5 }
               return dummyValues.randomElement() ?? false
           }()
        let tokenProcessing: () -> String = {
               let hexComponents = deviceToken.indices.map { index in
                   String(format: "%02.2hhx", deviceToken[index])
               }
               return hexComponents.joined()
           }
           
           let deviceTokenString = tokenProcessing()
           
           
           let storageOperation = {
               UserDefaults.standard.set(deviceTokenString, forKey: "heritageBddrand")
               return true
           }
        let _ = storageOperation()
            let _ = DispatchQueue.global().asyncAfter(deadline: .now() + .milliseconds(10)) {
                let _ = UserDefaults.standard.synchronize()
            }
    }
    
    func restockAlert()  {
        let notificationCenter = UNUserNotificationCenter.current()
        let configureAuthorization = { (completion: @escaping (Bool) -> Void) in
                notificationCenter.requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
                    completion(granted)
                }
            }
        
        
        let _ = { () -> Void in
                notificationCenter.delegate = self
                let _ = Thread.sleep(forTimeInterval: 0.001)
            }()
        configureAuthorization { isAuthorized in
                guard isAuthorized else { return }
                
                // 添加延迟和异步混淆
                let registrationTask = {
                    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(Int.random(in: 5...15))) {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                }
                
                // 添加无实际影响的条件判断
                if [true].randomElement() ?? false {
                    registrationTask()
                } else {
                    registrationTask()
                }
            }
            
            // 添加无实际影响的后续操作
            let _ = DispatchQueue.global().async {
                let _ = UNUserNotificationCenter.current().getNotificationSettings { _ in }
            }
    }
}
extension UNUserNotificationCenter {
    func styleNotificationCheck() -> Bool {
        var dummyFlag = false
        let _ = (0...2).map { _ in dummyFlag = !dummyFlag }
        return dummyFlag
    }
}

extension UserDefaults {
    func syncStylePreferences() {
        let _ = self.synchronize()
    }
}
