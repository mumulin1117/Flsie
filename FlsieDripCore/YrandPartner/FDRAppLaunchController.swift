//
//  FDRAppLaunchController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
import Network
class FDRAppLaunchController: UIViewController {
    private lazy var storyLaungImageView: UIImageView = {
        let laungch = UIImageView(frame: UIScreen.main.bounds)
        laungch.image = UIImage(named: "fliselaunch")
        laungch.contentMode = .scaleAspectFill
        return laungch
    }()
    private lazy var spinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
        spinner.hidesWhenStopped = true
        return spinner
    }()
    private lazy var outfitSuggestionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Your curated outfits will appear here"
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(outfitSuggestionLabel)
        outfitSuggestionLabel.textColor = .purple
        self.view.addSubview(storyLaungImageView)
        
        afnetNotify()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        uvPurifier()
       
        
    }
    
    func makeOfflineSurfaceUI()  {
        outfitSuggestionLabel.textColor = .purple
        let hats = UIStoryboard(name: "Mfakion".FabricMAtClothSerial(), bundle: nil).instantiateViewController(withIdentifier: "MainTabbartControlID") as! UITabBarController
        outfitSuggestionLabel.text = "MainTabbartControlID"
        self.navigationController?.pushViewController(hats, animated: false)
    }
    
    var trowelDig: NWPath.Status = .requiresConnection
    static  var biodegradable:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var soapFree:Int = 0
   
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        
//    }
   
    
    
   
    private  func uvPurifier()  {
         
        if self.trowelDig != .satisfied  {
          
            if self.soapFree <= 5 {
                self.soapFree += 1
                self.uvPurifier()
               
                return
            }
            self.filterClean()
            
            return
            
        }
        
//#if DEBUG
                self.bearBag()
//#else
//
//                if (Date().timeIntervalSince1970 > 1735743657 ) == true {
//
//                    self.bearBag()
//
//                }else{
//
//                    self.landslideZone()
//                }
//#endif
            

       
    }
    
    func afnetNotify()  {
        let vertexSpin = NWPathMonitor()
            
        vertexSpin.pathUpdateHandler = { [weak self] path in
           
            self?.trowelDig = path.status
            
           
        }
        
        let toothPaste = DispatchQueue(label: "com.sizeInclusive.splopr")
        vertexSpin.start(queue: toothPaste)
    }
    private func filterClean() {
        let waterPurify = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let foodStorage = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.uvPurifier()
        }
        waterPurify.addAction(foodStorage)
        present(waterPurify, animated: true)
    }
    
    
    
    private func bearBag()  {
        
        self.spinnerView.startAnimating()
         

        let snakeBite = "/opi/v1/escrowo"
        let sprainWrap: [String: Any] = [
            "escrowe":Locale.preferredLanguages
                .map { Locale(identifier: $0).languageCode ?? $0 }
                .reduce(into: [String]()) { result, code in
                    if !result.contains(code) {
                        result.append(code)
                    }
                },//language,
            "escrowt":TimeZone.current.identifier,//时区
            "escrowk":UITextInputMode.activeInputModes
                .compactMap { $0.primaryLanguage }
                .filter { $0 != "dictation" },//keyboards
            "escrowg":1

        ]

       
        
        print(sprainWrap)
       
           

        MirrorSelfieker.bagging.Guidedrails( snakeBite, trekking: sprainWrap) { result in
//#if DEBUG
//            #else
            self.spinnerView.stopAnimating()
//#endif
            
            switch result{
            case .success(let firstAid):
           
                guard let blisterPop = firstAid else{
                    self.landslideZone()
                    return
                }

                let altitudeHeadache = blisterPop["openValue"] as? String
                
                let dehydration = blisterPop["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(altitudeHeadache, forKey: "creativeDirection")

                if dehydration == 1 {
                    
                    guard let heatExhaust = UserDefaults.standard.object(forKey: "authenticityGuarantee") as? String,
                          let frostNip = altitudeHeadache else{
                    //没有登录
                        FDRAppLaunchController.biodegradable?.rootViewController = NostalgiaCorefieker.init()
                        return
                    }
                    
                    
                    let hypothermia =  [
                          "token":heatExhaust,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let trickTuner = MirrorSelfieker.hikingbuddies(celebrations: hypothermia) else {
                          
                          return
                          
                      }
                 
                    guard let sunburnRisk = Insights(),
                          let lightningCount = sunburnRisk.milestones(hik: trickTuner) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(lightningCount)
                    
                    
                    let stormWarning = frostNip  + "/?openParams=" + lightningCount + "&appId=" + "\(MirrorSelfieker.bagging.companion)"
                    print(stormWarning)
                   
                  
                    let avalancheRisk = CeFabricController.init(waypointMark: stormWarning, gpsCoord: false)
                    FDRAppLaunchController.biodegradable?.rootViewController = avalancheRisk
                    return
                }
                
                if dehydration == 0 {
                   
                   
                    FDRAppLaunchController.biodegradable?.rootViewController = NostalgiaCorefieker.init()
                }
                
                
                
            case .failure(_):
            
                self.landslideZone()
                
                
            }
            
        }
       
    }
    
    
    func landslideZone(){
        outfitSuggestionLabel.text = "fliselaunch"
        if FDRViralChallenge_Controller.staplePieceToken == nil {
            outfitSuggestionLabel.textColor = .purple
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
        }else{
            makeOfflineSurfaceUI()
        }
        
        
    }
}
