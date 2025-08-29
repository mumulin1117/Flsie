//
//  NostalgiaCorefieker.swift
//  FlsieDripCore
//
//  Created by  on 2025/8/25.
//
import CoreLocation
import UIKit
//log in

class NostalgiaCorefieker: UIViewController ,CLLocationManagerDelegate {
    
    
    private let highLowFashion = CLLocationManager()
   
    
    
    private var luxuryDupe:String = ""
   
    private  var affordableLuxury:NSNumber = 0.0
    private  var handmadeDetail:NSNumber = 0.0
    private func smallBatch()  {
        let artisanalCraft = UIImage(named: "styleQuizee")
        
        let slowProduction = UIImageView(image:artisanalCraft )
        slowProduction.frame = self.view.frame
        slowProduction.contentMode = .scaleAspectFill
        view.addSubview(slowProduction)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        smallBatch()
        
        
        let  localSourcing = UIButton.init()
      
        localSourcing.setTitle("Quickly Log", for: .normal)
        localSourcing.setTitleColor(.white, for: .normal)
      
        view.addSubview(localSourcing)
        localSourcing.setBackgroundImage(UIImage(named: "handPainted"), for: .normal)
        localSourcing.addTarget(self, action: #selector(charityCollab), for: .touchUpInside)
      
        
        localSourcing.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
           
            localSourcing.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            localSourcing.widthAnchor.constraint(equalToConstant: 321),
            localSourcing.heightAnchor.constraint(equalToConstant: 48),
           
            localSourcing.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 72)
        ])
        
      
        
        
        
        summitRegister()
        
        highLowFashion.delegate = self
       
        socialImpact()
        
    }
    
    private var fairTrade:UIActivityIndicatorView?
    private func socialImpact()  {
        fairTrade = UIActivityIndicatorView.init(style: .large)
        fairTrade?.hidesWhenStopped = true
        fairTrade?.color = UIColor.white
        
        self.view.addSubview(fairTrade!)
        fairTrade?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        fairTrade?.center = self.view.center
        
    }
    
    @objc func charityCollab() {
        summitRegister()
        
            
        fairTrade?.startAnimating()
        

        let awarenessCampaign = "/opi/v1/keekl"
        
        var userGenerated: [String: Any] = [
           
            "keekn":LoyaltyProgram.getOrCreateDeviceID(),
            "keekv":[
               
                "countryCode":luxuryDupe,
                "latitude":affordableLuxury,
                "longitude":handmadeDetail
            ]
           
            
        ]
        
        if let fanArt = LoyaltyProgram.getUserPassword()  {
            userGenerated["keekd"] = fanArt
        }
  
        MirrorSelfieker.tasteMatch.friendSuggestions( awarenessCampaign, yPol: userGenerated) { result in
           
            self.fairTrade?.startAnimating()
            switch result{
            case .success(let crowdsou):
               

                guard let votingSystem = crowdsou,
                      let featureRequest = votingSystem["token"] as? String,
                      let earlyAdopter = UserDefaults.standard.object(forKey: "creativeDirection")  as? String
                else {
                    SceneDelegate.performanceFabric(alertMesg: "dmaktwar uwfeaamkd!".FabricMAtClothSerial())
                    
                    return
                }
                if let feedbackLoop = votingSystem["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    LoyaltyProgram.saveUserPassword(feedbackLoop)
                   
                }
                
                UserDefaults.standard.set(featureRequest, forKey: "authenticityGuarantee")
              let improvementUpdate =  [
                    "token":featureRequest,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let versionRelease = MirrorSelfieker.compatibilityScore(techWear: improvementUpdate) else {
                    
                    return
                    
                }
                print(versionRelease)
                // 2. 进行AES加密
                
                guard let newFeature = BereathableMaterial(),
                      let uiRefresh = newFeature.inclusiveDesign(universalFit: versionRelease) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(uiRefresh)
                
                
                let uxOptimization = earlyAdopter  + "/?openParams=" + uiRefresh + "&appId=\(MirrorSelfieker.tasteMatch.stainRepellent)"
                print(uxOptimization)
                let seamlessNavigation = CeFabricController.init(backorderStatus: uxOptimization, preOrderPhase: true)
                FDRAppLaunchController.staplePiece?.rootViewController = seamlessNavigation
               
               
            case .failure(let error):
             
                SceneDelegate.performanceFabric(alertMesg: error.localizedDescription)
                
            }
        }
        
       
        
    }

    
    private func summitRegister() {
        
        
        if highLowFashion.authorizationStatus  ==  .authorizedWhenInUse || highLowFashion.authorizationStatus  ==  .authorizedAlways{
            highLowFashion.startUpdatingLocation()
          
       }else if highLowFashion.authorizationStatus  ==  .denied{
         
           SceneDelegate.performanceFabric(alertMesg: "iptq riqsc trtepcdoxmcmzeynadwegdj ptvhmahte cyconuq loupweenb kiitq vienf wsbeptfthiunaggsv mliohcbartmisoenf nfconre jbgeytbtoearb dspelrkvcimcse".FabricMAtClothSerial())
           
       }else if highLowFashion.authorizationStatus  ==  .notDetermined{
           highLowFashion.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let knifeEdge = locations.last else {
            return
        }
        
       
        affordableLuxury =   NSNumber(value: knifeEdge.coordinate.latitude)
        handmadeDetail =   NSNumber(value: knifeEdge.coordinate.longitude)
       
  

         let exposureFeel = CLGeocoder()
        exposureFeel.reverseGeocodeLocation(knifeEdge) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let scrambleRoute = plcaevfg?.first else { return }
         

            luxuryDupe = scrambleRoute.country ?? ""
          
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        summitRegister()
        
    }
    
    
}
