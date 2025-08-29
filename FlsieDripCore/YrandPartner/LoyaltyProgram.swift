//
//  LoyaltyProgram.swift
//  FlsieDripCore
//
//  Created by  on 2025/8/29.
//

import UIKit

class LoyaltyProgram: NSObject {
    
    // 钥匙串服务标识符
       private static let service: String = {
           return Bundle.main.bundleIdentifier ?? "com.driped.flsie"
       }()
       
       // 账户标识符
       private static let deviceIDAccount = "flsie_device_id"
       private static let passwordAccount = "flsie_user_password"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func getOrCreateDeviceID() -> String {
          
           if let existingID = readFromKeychain(account: deviceIDAccount) {
            
               return existingID
           }
           
      
           let newDeviceID = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           saveToKeychain(value: newDeviceID, account: deviceIDAccount)
          
           return newDeviceID
       }

      
       
       // MARK: - 密码管理
       
       static func saveUserPassword(_ password: String) {
           saveToKeychain(value: password, account: passwordAccount)
       }
 
       static func getUserPassword() -> String? {
           return readFromKeychain(account: passwordAccount)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func readFromKeychain(account: String) -> String? {
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var result: AnyObject?
           let status = SecItemCopyMatching(query as CFDictionary, &result)
           
           guard status == errSecSuccess,
                 let data = result as? Data,
                 let value = String(data: data, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
     
       private static func saveToKeychain(value: String, account: String) {
         
           deleteFromKeychain(account: account)
           
           guard let data = value.data(using: .utf8) else { return }
           
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account,
               kSecValueData as String: data,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(query as CFDictionary, nil)
       }
       
       private static func deleteFromKeychain(account: String) {
           let query: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: service,
               kSecAttrAccount as String: account
           ]
           
           SecItemDelete(query as CFDictionary)
       }
       

}
