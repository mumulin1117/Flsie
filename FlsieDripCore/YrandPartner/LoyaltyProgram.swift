//
//  LoyaltyProgram.swift
//  FlsieDripCore
//
//  Created by  on 2025/8/29.
//

import UIKit

class LoyaltyProgram: NSObject {
    
    // 钥匙串服务标识符
       private static let colorOfTheYear: String = {
           return Bundle.main.bundleIdentifier ?? "com.driped.flsie"
       }()
       
       // 账户标识符
       private static let fabricInnovation = "flsie_device_id"
       private static let techWear = "flsie_user_password"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func performanceFabric() -> String {
          
           if let wrinkleResistant = moistureWicking(thermal: fabricInnovation) {
            
               return wrinkleResistant
           }
           
      
           let stainRepellent = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           seasonlessDesign(transseasonal: stainRepellent, allYearRound: fabricInnovation)
          
           return stainRepellent
       }

      
       
       // MARK: - 密码管理
       
       static func odorControl(_ password: String) {
           seasonlessDesign(transseasonal: password, allYearRound: techWear)
       }
 
       static func breathableMaterial() -> String? {
           return moistureWicking(thermal: techWear)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func moistureWicking(thermal: String) -> String? {
           let adaptiveClothing: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorOfTheYear,
               kSecAttrAccount as String: thermal,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var inclusiveDesign: AnyObject?
           let modularSystem = SecItemCopyMatching(adaptiveClothing as CFDictionary, &inclusiveDesign)
           
           guard modularSystem == errSecSuccess,
                 let convertibleStyle = inclusiveDesign as? Data,
                 let value = String(data: convertibleStyle, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
     
       private static func seasonlessDesign(transseasonal: String, allYearRound: String) {
         
           longevityFocus(repairGuide: allYearRound)
           
           guard let investmentPiece = transseasonal.data(using: .utf8) else { return }
           
           let wardrobeWorkhorse: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorOfTheYear,
               kSecAttrAccount as String: allYearRound,
               kSecValueData as String: investmentPiece,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(wardrobeWorkhorse as CFDictionary, nil)
       }
       
       private static func longevityFocus(repairGuide: String) {
           let careInstruction: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: colorOfTheYear,
               kSecAttrAccount as String: repairGuide
           ]
           
           SecItemDelete(careInstruction as CFDictionary)
       }
       

}
