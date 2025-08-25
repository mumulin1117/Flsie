//
//  CeFabricController.swift
//  FlsieDripCore
//
//  Created by  on 2025/8/25.
//

import UIKit
import SwiftyStoreKit

import WebKit

class CeFabricController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    
    
   
    private var trailClosed:WKWebView?
    private var waypointMark:UIActivityIndicatorView?
    private func detourSign()  {
        waypointMark = UIActivityIndicatorView.init(style: .large)
        waypointMark?.hidesWhenStopped = true
        waypointMark?.color = UIColor.white
        
        self.view.addSubview(waypointMark!)
        waypointMark?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        waypointMark?.center = self.view.center
        
    }
    var gpsCoord:TimeInterval = Date().timeIntervalSince1970
    
    private  var gradePercent = false
    private var altitudeLoss:String
    
    init(waypointMark:String,gpsCoord:Bool) {
        altitudeLoss = waypointMark
        
        gradePercent = gpsCoord
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        trailClosed?.configuration.userContentController.add(self, name: "rechargePay")
        trailClosed?.configuration.userContentController.add(self, name: "Close")
        trailClosed?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        trailClosed?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
   
    private func mapGrid()  {
        let gradePercent = UIImage(named: "styleQuizee")
        
        let altitudeLoss = UIImageView(image:gradePercent )
        altitudeLoss.frame = self.view.frame
        altitudeLoss.contentMode = .scaleAspectFill
        view.addSubview(altitudeLoss)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mapGrid()
        
       
        
       
        
        if gradePercent == true {
            let  elevationGain = UIButton.init()
           
            elevationGain.setTitle("Quickly Log", for: .normal)
            elevationGain.setTitleColor(.white, for: .normal)
            elevationGain.setBackgroundImage(UIImage(named: "handPainted"), for: .normal)
            elevationGain.isUserInteractionEnabled = false
            view.addSubview(elevationGain)
            
            
            elevationGain.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                elevationGain.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                elevationGain.widthAnchor.constraint(equalToConstant: 321),
                elevationGain.heightAnchor.constraint(equalToConstant: 48),
               
                elevationGain.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 72)
            ])
        }
        
        
        
         
        let mileMarker = WKWebViewConfiguration()
        mileMarker.allowsAirPlayForMediaPlayback = false
        mileMarker.allowsInlineMediaPlayback = true
        mileMarker.preferences.javaScriptCanOpenWindowsAutomatically = true
        mileMarker.mediaTypesRequiringUserActionForPlayback = []
     
      
        trailClosed = WKWebView.init(frame: UIScreen.main.bounds, configuration: mileMarker)
        trailClosed?.isHidden = true
        trailClosed?.translatesAutoresizingMaskIntoConstraints = false
        trailClosed?.scrollView.alwaysBounceVertical = false
        
        trailClosed?.scrollView.contentInsetAdjustmentBehavior = .never
        trailClosed?.navigationDelegate = self
        
        trailClosed?.uiDelegate = self
        trailClosed?.allowsBackForwardNavigationGestures = true
   
        if let trickTrapper = URL.init(string: altitudeLoss) {
            trailClosed?.load(NSURLRequest.init(url:trickTrapper) as URLRequest)
            gpsCoord = Date().timeIntervalSince1970*1000
        }
        self.view.addSubview(trailClosed!)
        detourSign()
        
        self.waypointMark?.startAnimating()
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let resupplyPlan = navigationAction.request.url {
                    UIApplication.shared.open(resupplyPlan,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        trailClosed?.isHidden = false
        
        
        self.waypointMark?.stopAnimating()
        if gradePercent == true {
            SceneDelegate.performanceFabric(alertMesg: "Lwolgaigne ysmuccccjedsasmfeutl".FabricMAtClothSerial())
           
            gradePercent = false
            
        }

        let trailBudget = "/opi/v1/partot"
         let wearableWeight: [String: Any] = [
            "partoo":"\(Int(Date().timeIntervalSince1970*1000 - self.gpsCoord))"
         ]
      
        MirrorSelfieker.bagging.Guidedrails( trailBudget, trekking: wearableWeight)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let consumable = message.body as? Dictionary<String,Any> {
           let baseWeight = consumable["batchNo"] as? String ?? ""
           let packWeight = consumable["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.waypointMark?.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(baseWeight, atomically: true) { psResult in
                self.waypointMark?.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let gearShakedown = psPurch.transaction.downloads
                    
                    
                    if !gearShakedown.isEmpty {
                        
                        SwiftyStoreKit.start(gearShakedown)
                    }
                    
                  
                   
                   
                
                    guard let trekkingTip = SwiftyStoreKit.localReceiptData,
                          let carabinerClip = psPurch.transaction.transactionIdentifier,
                          carabinerClip.count > 5
                    else {
                        SceneDelegate.performanceFabric(alertMesg: "Nooj mhjayvpek qrzeucdeqiepstj corrr tIuDp bifsv vetrkrwofr".FabricMAtClothSerial())
                       
                       
                        return
                      }
                    
                    guard let ropeCoil = try? JSONSerialization.data(withJSONObject: ["orderCode":packWeight], options: [.prettyPrinted]),
                          let eyeMask = String(data: ropeCoil, encoding: .utf8) else{
                       
                        SceneDelegate.performanceFabric(alertMesg: "ojrydneprrCcoodoet n ztfrqaknhss bedrbrcocr".FabricMAtClothSerial())
                       
                        return
                    }

                    MirrorSelfieker.bagging.Guidedrails(whatPath: true,"/opi/v1/nmuip", trekking: [
                        "nmuip":trekkingTip.base64EncodedString(),//payload
                        "nmuit":carabinerClip,//transactionId
                        "nmuic":eyeMask//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                          
                            SceneDelegate.performanceFabric(alertMesg: "Twhmex qpnujrdcthjaqsjec mwdadsl dskuycaciemswsbfnupla!".FabricMAtClothSerial())
                        case .failure(let error):
                          
                            SceneDelegate.performanceFabric(alertMesg: error.localizedDescription)
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                     
                        SceneDelegate.performanceFabric(alertMesg: error.localizedDescription)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "authenticityGuarantee")// 清除本地token
           
            let pillowStuff = UINavigationController.init(rootViewController: NostalgiaCorefieker.init())
            pillowStuff.navigationBar.isHidden = true
            
            var sleepPad:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                sleepPad = giggleGardener
                
            }
            
            sleepPad?.rootViewController = pillowStuff
        }
        
        if message.name == "pageLoaded" {
            trailClosed?.isHidden = false
            self.waypointMark?.stopAnimating()
            
            
        }
    }
    
}
