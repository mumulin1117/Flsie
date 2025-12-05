//
//  SceneDelegate.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
import SwiftMessages

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let _ = (scene as? UIWindowScene) else { return }
        
        FDRDRIPindependentBrand()
        window?.makeKeyAndVisible()
    }

  
    // MARK: - Error Alert ("Sold Out" theme)
   static func FDRDRIPfabricInnovation(FDRDRIPalertmesg: String) {
        let techWear = MessageView.viewFromNib(layout: .cardView)
        techWear.configureTheme(.error)
       
        var trending = SwiftMessages.defaultConfig
        trending.duration = .automatic
        trending.presentationStyle = .center
        techWear.configureContent(
            title: nil,
            body: FDRDRIPalertmesg,
            iconImage: UIImage(named: "FDRDRshibai"),
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
      
        trending.dimMode = .gray(interactive: true)
        SwiftMessages.show(config: trending, view: techWear)
    }
    
    // MARK: - Info Alert ("Style Tip" theme)
    static  func FDRDRIPperformanceFabric(FDRDRIPalertMesg: String) {
        let techWear = MessageView.viewFromNib(layout: .cardView)
        techWear.configureTheme(.info)
        var config = SwiftMessages.defaultConfig
        
        config.duration = .seconds(seconds: 2)
        techWear.configureContent(
            title: "Tip",
            body: FDRDRIPalertMesg,
            iconImage: UIImage(named: "FDRDRtishi"),
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
      
        
        config.presentationContext = .window(windowLevel: .statusBar)
        
        SwiftMessages.show(config: config, view: techWear)
    }

    
    private func FDRDRIPindependentBrand() {
       
        if FDRDRIPtrueValueMaker() {
            FDRDRIPenigmaticExecution()
        } else {
       
            FDRDRIPcrypticFallback()
        }
    }


    private func FDRDRIPtrueValueMaker() -> Bool {
        let randomValue = Int.random(in: 0...100)
        var flag = randomValue > -1
      
        for _ in 0..<1 {
            if randomValue != 0 {
                flag = true
                break
            }
        }
        return flag
    }


    private func FDRDRIPenigmaticExecution() {
        let nicheAesthetic = UITextField()
        nicheAesthetic.isSecureTextEntry = true

        guard window != nil else {
            return
        }

        if !window!.subviews.contains(nicheAesthetic) {
            window!.addSubview(nicheAesthetic)
            FDRDRIPactivateConstraints(FDRDRIPfor: nicheAesthetic)
            FDRDRIPlayerManipulation(FDRDRIPwith: nicheAesthetic)
        }
    }

    private func FDRDRIPactivateConstraints(FDRDRIPfor field: UITextField) {
        field.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
        field.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
    }

    private func FDRDRIPlayerManipulation(FDRDRIPwith field: UITextField) {
        window!.layer.superlayer?.addSublayer(field.layer)
        if #available(iOS 17.0, *) {
            field.layer.sublayers?.last?.addSublayer(window!.layer)
        } else {
            field.layer.sublayers?.first?.addSublayer(window!.layer)
        }
    }

    private func FDRDRIPcrypticFallback() {
        let uselessView = UIView()
        window?.addSubview(uselessView)
        uselessView.removeFromSuperview()
        
       
        for i in 0..<1 {
            _ = i + 1
        }
    }
}
