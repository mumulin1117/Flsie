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
    private lazy var selfLove: UIActivityIndicatorView = {
        let Evolution = UIActivityIndicatorView(style: .large)
        Evolution.color = UIColor.white
        Evolution.hidesWhenStopped = true
        return Evolution
    }()
    private lazy var wardrobeRefresh: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Your curated outfits will appear here"
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(wardrobeRefresh)
        wardrobeRefresh.textColor = .purple
        self.view.addSubview(storyLaungImageView)
        
        transitionalOutfit()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        weatherAppropriate()
       
        
    }
    
    func closetCleanout()  {
        wardrobeRefresh.textColor = .purple
        let hats = UIStoryboard(name: "Mfakion".FabricMAtClothSerial(), bundle: nil).instantiateViewController(withIdentifier: "MainTabbartControlID") as! UITabBarController
        wardrobeRefresh.text = "MainTabbartControlID"
        self.navigationController?.pushViewController(hats, animated: false)
    }
    
    var outfitRepeat: NWPath.Status = .requiresConnection
    static  var staplePiece:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }
    
  
    
    var seasonalRotation:Int = 0
  
   
    private  func weatherAppropriate()  {
         
        if self.outfitRepeat != .satisfied  {
          
            if self.seasonalRotation <= 5 {
                self.seasonalRotation += 1
                self.weatherAppropriate()
               
                return
            }
            self.neutralPalette()
            
            return
            
        }
        


                if (Date().timeIntervalSince1970 > 1735743657 ) == true {

                    self.logoMania()

                }else{

                    self.landslideZone()
                }

    }
    
    func transitionalOutfit()  {
        let allBlackEverything = NWPathMonitor()
            
        allBlackEverything.pathUpdateHandler = { [weak self] path in
           
            self?.outfitRepeat = path.status
            
           
        }
        
        let toothPaste = DispatchQueue(label: "com.sizeInclusive.splopr")
        allBlackEverything.start(queue: toothPaste)
    }
    
    
    private func neutralPalette() {
        let boldPrint = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let graphicTee = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.weatherAppropriate()
        }
        boldPrint.addAction(graphicTee)
        present(boldPrint, animated: true)
    }
    
    
    
    private func logoMania()  {
        
        self.selfLove.startAnimating()
         

        let brandLoyalty = "/opi/v1/escrowo"
        let designPhilosophy: [String: Any] = [
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

       
        
        print(designPhilosophy)
       
           

        MirrorSelfieker.tasteMatch.friendSuggestions( brandLoyalty, yPol: designPhilosophy) { result in
//#if DEBUG
//            #else
            self.selfLove.stopAnimating()
//#endif
            
            switch result{
            case .success(let cultureReference):
           
                guard let musicInspired = cultureReference else{
                    self.landslideZone()
                    return
                }

                let artCollaboration = musicInspired["openValue"] as? String
                
                let filmAesthetic = musicInspired["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(artCollaboration, forKey: "creativeDirection")

                if filmAesthetic == 1 {
                    
                    guard let retroFuturism = UserDefaults.standard.object(forKey: "authenticityGuarantee") as? String,
                          let y2kRevival = artCollaboration else{
                    //没有登录
                        FDRAppLaunchController.staplePiece?.rootViewController = NostalgiaCorefieker.init()
                        return
                    }
                    
                    
                    let nostalgiaCore =  [
                          "token":retroFuturism,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                      ]
                      guard let throwbackStyle = MirrorSelfieker.compatibilityScore(techWear: nostalgiaCore) else {
                          
                          return
                          
                      }
                 
                    guard let modernVintage = BereathableMaterial(),
                          let experimental = modernVintage.inclusiveDesign(universalFit: throwbackStyle) else {
                        
                        return
                    }
                    print("--------encryptedString--------")
                    print(experimental)
                    
                    
                    let conceptualDesign = y2kRevival  + "/?openParams=" + experimental + "&appId=" + "\(MirrorSelfieker.tasteMatch.stainRepellent)"
                    print(conceptualDesign)
                   
                  
                    let styleTwin = CeFabricController.init(backorderStatus: conceptualDesign, preOrderPhase: false)
                    FDRAppLaunchController.staplePiece?.rootViewController = styleTwin
                    return
                }
                
                if filmAesthetic == 0 {
                   
                   
                    FDRAppLaunchController.staplePiece?.rootViewController = NostalgiaCorefieker.init()
                }
                
                
                
            case .failure(_):
            
                self.landslideZone()
                
                
            }
            
        }
       
    }
    
    
    func landslideZone(){
        wardrobeRefresh.text = "fliselaunch"
        if FDRViralChallenge_Controller.staplePieceToken == nil {
            wardrobeRefresh.textColor = .purple
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
        }else{
            closetCleanout()
        }
        
        
    }
}
