//
//  ViewController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit
import SwiftMessages


extension UIViewController {
    
    // MARK: - Success Alert (Streetwear "Drop" theme)
    func showDripSuccessAlert(message: String) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureDropShadow()
        
        view.configureContent(
            title: nil,
            body: message,
            iconImage: UIImage(named: "successfulImage"), // Custom checkmark+shoe icon
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .top
        config.preferredStatusBarStyle = .lightContent
        SwiftMessages.show(config: config, view: view)
    }
    
    // MARK: - Error Alert ("Sold Out" theme)
    func showHypeFailAlert(message: String) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.error)
       
      
        view.configureContent(
            title: nil,
            body: message,
            iconImage: UIImage(named: "shibai"),
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
        var config = SwiftMessages.defaultConfig
        config.duration = .automatic
        config.presentationStyle = .center
        config.dimMode = .gray(interactive: true)
        SwiftMessages.show(config: config, view: view)
    }
    
    // MARK: - Info Alert ("Style Tip" theme)
    func showFlexTipAlert(message: String) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.info)
//        view.backgroundColor = .clear//UIColor(red: 0.07, green: 1, blue: 0.84, alpha: 1)
//        view.titleLabel?.textColor = .white
//        view.bodyLabel?.textColor = .white
//        
        view.configureContent(
            title: "Tip",
            body: message,
            iconImage: UIImage(named: "tishi"),
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationContext = .window(windowLevel: .statusBar)
        SwiftMessages.show(config: config, view: view)
    }
    
   
   
}


class ShippingRating {

    
    // MARK: - Core Request Method
   class func personalizationSetting(
        membersOnly: String,
    vintage: [String: Any],
    exclusiveDrop: ((Any?) -> Void)?,
     avantGarde: ((Error) -> Void)?
) {
    let moistureWicking = "https://www.ghost7890float.xyz/backthree" +     membersOnly
    guard let url = URL(string: moistureWicking) else {
                avantGarde?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL: \(moistureWicking)"]))
        return
    }
    
    var convertibleStyle = brandPartner(arFitting: url, returnPolicy: vintage)
    let headers = allYearRound()
    headers.forEach { convertibleStyle.setValue($1, forHTTPHeaderField: $0) }
    
    let modelOffDuty = URLSessionConfiguration.default
    modelOffDuty.timeoutIntervalForRequest = 30
    modelOffDuty.timeoutIntervalForResource = 60
    
    let session = URLSession(configuration: modelOffDuty)
    
    let task = session.dataTask(with: convertibleStyle) { data, response, error in
        DispatchQueue.main.async {
            // 1. Check for fundamental errors
            if let error = error {
                        avantGarde?(error)
                return
            }
       
            guard let httpResponse = response as? HTTPURLResponse else {
                        avantGarde?(NSError(domain: "NetworkError", code: -2, userInfo: [NSLocalizedDescriptionKey: "Invalid response type"]))
                return
            }
     
            guard let data = data else {
                        avantGarde?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }

            print("Raw response:", String(data: data, encoding: .utf8) ?? "Non-UTF8 data")
     
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [.mutableContainers, .allowFragments])
                        exclusiveDrop?(json)
            } catch let parseError {
 
                        avantGarde?(NSError(
                    domain: "ParseError",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "Failed to parse response: \(parseError.localizedDescription)",
                        "rawResponse": String(data: data, encoding: .utf8) ?? "Non-text data",
                        "underlyingError": parseError
                    ]
                ))
            }
        }
    }
    task.resume()
}
    
    private class func allYearRound() -> [String: String] {
        // Set headers
        var matching = ["Content-Type": "application/json"]
       
        matching["key"] = FDRViralChallenge_Controller.appID
        matching["token"] = FDRViralChallenge_Controller.loginuserToken
       return matching
    }
    
    private class func brandPartner(arFitting:URL,returnPolicy: [String: Any]) -> URLRequest {
        var handmadeDetail = URLRequest(
                    url: arFitting,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 30
                )
        
        handmadeDetail.httpMethod = "POST"
        handmadeDetail.setValue("application/json", forHTTPHeaderField: "Content-Type")
        handmadeDetail.setValue("application/json", forHTTPHeaderField: "Accept")
        handmadeDetail.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        handmadeDetail.httpBody = try? JSONSerialization.data(withJSONObject: returnPolicy, options: [])
        
        
       
        return handmadeDetail
     }
   
}
