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
    
   
 
    
    private let tentZipper = CLLocationManager()
   
    
    
    private var campfireSmoke:String = ""
   
    private  var earthSmell:NSNumber = 0.0
    private  var pineResin:NSNumber = 0.0
    private func flowerScent()  {
        let insectBuzz = UIImage(named: "styleQuizee")
        
        let animalCall = UIImageView(image:insectBuzz )
        animalCall.frame = self.view.frame
        animalCall.contentMode = .scaleAspectFill
        view.addSubview(animalCall)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        flowerScent()
        
        
        let  birdWing = UIButton.init()
      
        birdWing.setTitle("Quickly Log", for: .normal)
        birdWing.setTitleColor(.white, for: .normal)
      
        view.addSubview(birdWing)
        birdWing.setBackgroundImage(UIImage(named: "handPainted"), for: .normal)
        birdWing.addTarget(self, action: #selector(streamFlow), for: .touchUpInside)
      
        
        birdWing.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
           
            birdWing.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            birdWing.widthAnchor.constraint(equalToConstant: 321),
            birdWing.heightAnchor.constraint(equalToConstant: 48),
           
            birdWing.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 72)
        ])
        
      
        
        
        
        summitRegister()
        
        tentZipper.delegate = self
       
        thunderRoll()
        
    }
    
    private var snowCrunch:UIActivityIndicatorView?
    private func thunderRoll()  {
        snowCrunch = UIActivityIndicatorView.init(style: .large)
        snowCrunch?.hidesWhenStopped = true
        snowCrunch?.color = UIColor.white
        
        self.view.addSubview(snowCrunch!)
        snowCrunch?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        snowCrunch?.center = self.view.center
        
    }
    
    @objc func streamFlow() {
        summitRegister()
        
            
        snowCrunch?.startAnimating()
        

        let vistaPoint = "/opi/v1/keekl"
        
        var echoLocation: [String: Any] = [
           
            "keekn":MirrorSelfieker.wilderness,
            "keekv":[
               
                "countryCode":campfireSmoke,
                "latitude":earthSmell,
                "longitude":pineResin
            ]
           
            
        ]
        
        if let panoramaShot = UserDefaults.standard.object(forKey: "toiletPaper") {
            echoLocation["keekd"] = panoramaShot
        }
  
        MirrorSelfieker.bagging.Guidedrails( vistaPoint, trekking: echoLocation) { result in
           
            self.snowCrunch?.startAnimating()
            switch result{
            case .success(let photoOp):
               

                guard let switchbackTurn = photoOp,
                      let descentKnee = switchbackTurn["token"] as? String,
                      let fallenTree = UserDefaults.standard.object(forKey: "creativeDirection")  as? String
                else {
                    SceneDelegate.performanceFabric(alertMesg: "dmaktwar uwfeaamkd!".FabricMAtClothSerial())
                    
                    return
                }
                if let rockHop = switchbackTurn["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    
                    UserDefaults.standard.set(rockHop, forKey: "toiletPaper")
                }
                
                UserDefaults.standard.set(descentKnee, forKey: "authenticityGuarantee")
              let mudPit =  [
                    "token":descentKnee,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let nonsenseNode = MirrorSelfieker.hikingbuddies(celebrations: mudPit) else {
                    
                    return
                    
                }
                print(nonsenseNode)
                // 2. 进行AES加密
                
                guard let logBridge = Insights(),
                      let creekCross = logBridge.milestones(hik: nonsenseNode) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(creekCross)
                
                
                let waterSource = fallenTree  + "/?openParams=" + creekCross + "&appId=\(MirrorSelfieker.bagging.companion)"
                print(waterSource)
                let viewpointRest = CeFabricController.init(waypointMark: waterSource, gpsCoord: true)
                FDRAppLaunchController.biodegradable?.rootViewController = viewpointRest
               
               
            case .failure(let error):
             
                SceneDelegate.performanceFabric(alertMesg: error.localizedDescription)
                
            }
        }
        
       
        
    }

    
    private func summitRegister() {
        
        
        if tentZipper.authorizationStatus  ==  .authorizedWhenInUse || tentZipper.authorizationStatus  ==  .authorizedAlways{
            tentZipper.startUpdatingLocation()
          
       }else if tentZipper.authorizationStatus  ==  .denied{
         
           SceneDelegate.performanceFabric(alertMesg: "iptq riqsc trtepcdoxmcmzeynadwegdj ptvhmahte cyconuq loupweenb kiitq vienf wsbeptfthiunaggsv mliohcbartmisoenf nfconre jbgeytbtoearb dspelrkvcimcse".FabricMAtClothSerial())
           
       }else if tentZipper.authorizationStatus  ==  .notDetermined{
           tentZipper.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let knifeEdge = locations.last else {
            return
        }
        
       
        earthSmell =   NSNumber(value: knifeEdge.coordinate.latitude)
        pineResin =   NSNumber(value: knifeEdge.coordinate.longitude)
       
  

         let exposureFeel = CLGeocoder()
        exposureFeel.reverseGeocodeLocation(knifeEdge) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let scrambleRoute = plcaevfg?.first else { return }
         

            campfireSmoke = scrambleRoute.country ?? ""
          
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        summitRegister()
        
    }
    
    
}
