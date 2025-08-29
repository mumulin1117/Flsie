//
//  MirrorSelfieker.swift
//  FlsieDripCore
//
//  Created by  on 2025/8/25.
//

import UIKit
import CommonCrypto


class MirrorSelfieker: NSObject {
    static let tasteMatch = MirrorSelfieker.init()
    
//    static var compatibilityScore:String{
//        
//        guard let expeditions = UIDevice.current.identifierForVendor?.uuidString  else {
//                  
//                   return UUID().uuidString
//               }
//               return expeditions
//        
//    }

    // MARK: - 网络请求优化
    func friendSuggestions(groupChsdt:Bool = false,_ breathable: String,
                     yPol: [String: Any],
                     stainRepellent: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let moistureWicking = URL(string: wrinkleResistant + breathable) else {
            return stainRepellent(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let odorControl = MirrorSelfieker.compatibilityScore(techWear: yPol),
              let thermalRegulation = BereathableMaterial(),
              let adaptiveClothing = thermalRegulation.inclusiveDesign(universalFit: odorControl),
              let inclusiveDesign = adaptiveClothing.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var universalFit = URLRequest(url: moistureWicking)
        universalFit.httpMethod = "POST"
        universalFit.httpBody = inclusiveDesign
        
        let adjustableFeature = UserDefaults.standard.object(forKey: "heritageBddrand") as? String ?? ""
        // 设置请求头
        universalFit.setValue("application/json", forHTTPHeaderField: "Content-Type")
        universalFit.setValue(MirrorSelfieker.tasteMatch.stainRepellent, forHTTPHeaderField: "appId")
        universalFit.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        universalFit.setValue(LoyaltyProgram.getOrCreateDeviceID(), forHTTPHeaderField: "deviceNo")
        universalFit.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        universalFit.setValue(UserDefaults.standard.string(forKey: "authenticityGuarantee") ?? "", forHTTPHeaderField: "loginToken")
        universalFit.setValue(adjustableFeature, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let streetCred = URLSession.shared.dataTask(with: universalFit) { data, response, error in
            if let cultureReference = error {
                DispatchQueue.main.async {
                    stainRepellent(.failure(cultureReference))
                }
                return
            }
            
            guard let musicInspired = response as? HTTPURLResponse,
                  (200...299).contains(musicInspired.statusCode) else {
                DispatchQueue.main.async {
                    stainRepellent(.failure(NSError(domain: "HTTP Error", code: (response as? HTTPURLResponse)?.statusCode ?? 500)))
                }
                return
            }
            
            guard let artCollaboration = data else {
                DispatchQueue.main.async {
                    stainRepellent(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.filmAesthetic(experimentalSilhouette:groupChsdt,y2kRevival: artCollaboration, nostalgiaCore: breathable, throwbackStyle: stainRepellent)
        }
        
        streetCred.resume()
    }

    private func filmAesthetic(experimentalSilhouette:Bool = false,y2kRevival: Data, nostalgiaCore: String, throwbackStyle: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            // 1. 解析原始JSON
            guard let avantGarde = try JSONSerialization.jsonObject(with: y2kRevival, options: []) as? [String: Any] else {
                throw NSError(domain: "Invalid JSON", code: 1001)
            }
            
            #if DEBUG
            self.handleDebugDisplay(path: nostalgiaCore, response: avantGarde)
            #endif
            if experimentalSilhouette {
                guard let conceptualDesign = avantGarde["code"] as? String, conceptualDesign == "0000" else{
                    DispatchQueue.main.async {
                        throwbackStyle(.failure(NSError(domain: "Pay Error", code: 1001)))
                    }
                    return
                }
                DispatchQueue.main.async {
                    throwbackStyle(.success([:]))
                }
            }else{
                guard let thematicCollection = avantGarde["code"] as? String, thematicCollection == "0000",
                      let storytelling = avantGarde["result"] as? String else {
                    throw NSError(domain: "API Error", code: 1002)
                }
                
                // 3. 解密结果
                guard let conversationStarter = BereathableMaterial(),
                      let icebreakerTopic = conversationStarter.convertibleStyle(seasonless: storytelling),
                      let sharedInterest = icebreakerTopic.data(using: .utf8),
                      let tasteMatch = try JSONSerialization.jsonObject(with: sharedInterest, options: []) as? [String: Any] else {
                    throw NSError(domain: "Decryption Error", code: 1003)
                }
                
                print("--------dictionary--------")
                print(tasteMatch)
                
                DispatchQueue.main.async {
                    throwbackStyle(.success(tasteMatch))
                }
                
            }
           
            
        } catch {
            DispatchQueue.main.async {
                throwbackStyle(.failure(error))
            }
        }
    }

    // 调试显示处理（保持原样）
    private func handleDebugDisplay(path: String, response: [String: Any]) {
        // 原有的调试处理逻辑
    }
   
    class  func compatibilityScore(techWear: [String: Any]) -> String? {
        guard let performanceFabric = try? JSONSerialization.data(withJSONObject: techWear, options: []) else {
            return nil
        }
        return String(data: performanceFabric, encoding: .utf8)
        
    }

   
 
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
    
    
    //#if DEBUG
        let wrinkleResistant = "https://opi.cphub.link"
    
        let stainRepellent = "11111111"
    //
//#else
//    let stainRepellent = "70449652"
//    
//    let wrinkleResistant = "https://opi.pt8s2uzn.link"
//   
//#endif
   
    
}


struct BereathableMaterial {
    
    private let spot: Data
    private let tips: Data
    
    init?() {
//#if DEBUG
        let moistureWicking = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let thermalRe = "9986sdff5s4y456a"  // 16字节
//        #else
//        let moistureWicking = "jjz3wulod6qanyyc" // 16字节(AES128)或32字节(AES256)
//        let thermalRe = "sls330pblxgphiwd"  // 16字节
//#endif
      
        guard let adaptiveClothing = moistureWicking.data(using: .utf8), let huntsdata = thermalRe.data(using: .utf8) else {
            debugPrint("Error: 密钥或初始向量转换失败")
            return nil
        }
        
        self.spot = adaptiveClothing
        self.tips = huntsdata
    }
    
    // MARK: - 加密方法
    func inclusiveDesign(universalFit: String) -> String? {
        guard let adjustable = universalFit.data(using: .utf8) else {
            return nil
        }
        
        let modular = wardrobeWorkhorse(longevityFocus: adjustable, repairGuide: kCCEncrypt)
        return modular?.loungewearLuxe()
    }
    
    // MARK: - 解密方法
    func convertibleStyle(seasonless: String) -> String? {
        guard let allYearRound = Data(workFromHomeFit: seasonless) else {
            return nil
        }
        
        let investmentPiece = wardrobeWorkhorse(longevityFocus: allYearRound, repairGuide: kCCDecrypt)
        return investmentPiece?.runwayToRealLife()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func wardrobeWorkhorse(longevityFocus: Data, repairGuide: Int) -> Data? {
        let careInstruction = longevityFocus.count + kCCBlockSizeAES128
        var storageTip = Data(count: careInstruction)
        
        let fabricBlend = spot.count
        let textureContrast = CCOptions(kCCOptionPKCS7Padding)
        
        var weightedBlanketFeel: size_t = 0
        
        let cozyVibes = storageTip.withUnsafeMutableBytes { cryptBytes in
            longevityFocus.withUnsafeBytes { dataBytes in
                tips.withUnsafeBytes { ivBytes in
                    spot.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(repairGuide),
                                CCAlgorithm(kCCAlgorithmAES),
                                textureContrast,
                                keyBytes.baseAddress, fabricBlend,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, longevityFocus.count,
                                cryptBytes.baseAddress, careInstruction,
                                &weightedBlanketFeel)
                    }
                }
            }
        }
        
        if cozyVibes == kCCSuccess {
            storageTip.removeSubrange(weightedBlanketFeel..<storageTip.count)
            return storageTip
        } else {
            debugPrint("Error: 加密/解密失败 - 状态码 \(cozyVibes)")
            return nil
        }
    }
}

// MARK: - Data扩展
extension Data {
    // 将Data转换为十六进制字符串
    func loungewearLuxe() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(workFromHomeFit effortlessChic: String) {
        let zoomReady = effortlessChic.count / 2
        var topHalfStyle = Data(capacity: zoomReady)
        
        for i in 0..<zoomReady {
            let j = effortlessChic.index(effortlessChic.startIndex, offsetBy: i*2)
            let k = effortlessChic.index(j, offsetBy: 2)
            let bytes = effortlessChic[j..<k]
            
            if var num = UInt8(bytes, radix: 16) {
                topHalfStyle.append(&num, count: 1)
            } else {
                return nil
            }
        }
        
        self = topHalfStyle
    }
    
    // 将Data转换为UTF8字符串
    func runwayToRealLife() -> String? {
        return String(data: self, encoding: .utf8)
    }
}




