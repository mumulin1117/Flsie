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
    
    
   
    private var waitlistOnly:WKWebView?
    private var membersOnly:UIActivityIndicatorView?
    private func exclusiveDrop()  {
        membersOnly = UIActivityIndicatorView.init(style: .large)
        membersOnly?.hidesWhenStopped = true
        membersOnly?.color = UIColor.white
        
        self.view.addSubview(membersOnly!)
        membersOnly?.frame = CGRect.init(x: 0, y: 0, width: 70, height: 70)
        membersOnly?.center = self.view.center
        
    }
    var flashSale:TimeInterval = Date().timeIntervalSince1970
    
    private  var instantSellout = false
    private var restockAlert:String
    
    init(backorderStatus:String,preOrderPhase:Bool) {
        restockAlert = backorderStatus
        
        instantSellout = preOrderPhase
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        waitlistOnly?.configuration.userContentController.add(self, name: "rechargePay")
        waitlistOnly?.configuration.userContentController.add(self, name: "Close")
        waitlistOnly?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        waitlistOnly?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
   
    private func shippingUpdate()  {
        let unboxingExperience = UIImage(named: "styleQuizee")
        
        let authenticityGuarantee = UIImageView(image:unboxingExperience )
        authenticityGuarantee.frame = self.view.frame
        authenticityGuarantee.contentMode = .scaleAspectFill
        view.addSubview(authenticityGuarantee)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        shippingUpdate()
        
       
        
       
        
        if instantSellout == true {
            let  verifiedSeller = UIButton.init()
           
            verifiedSeller.setTitle("Quickly Log", for: .normal)
            verifiedSeller.setTitleColor(.white, for: .normal)
            verifiedSeller.setBackgroundImage(UIImage(named: "handPainted"), for: .normal)
            verifiedSeller.isUserInteractionEnabled = false
            view.addSubview(verifiedSeller)
            
            
            verifiedSeller.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                verifiedSeller.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                verifiedSeller.widthAnchor.constraint(equalToConstant: 321),
                verifiedSeller.heightAnchor.constraint(equalToConstant: 48),
               
                verifiedSeller.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 72)
            ])
        }
        
        
        
         
        let trustedReseller = WKWebViewConfiguration()
        trustedReseller.allowsAirPlayForMediaPlayback = false
        trustedReseller.allowsInlineMediaPlayback = true
        trustedReseller.preferences.javaScriptCanOpenWindowsAutomatically = true
        trustedReseller.mediaTypesRequiringUserActionForPlayback = []
     
      
        waitlistOnly = WKWebView.init(frame: UIScreen.main.bounds, configuration: trustedReseller)
        waitlistOnly?.isHidden = true
        waitlistOnly?.translatesAutoresizingMaskIntoConstraints = false
        waitlistOnly?.scrollView.alwaysBounceVertical = false
        
        waitlistOnly?.scrollView.contentInsetAdjustmentBehavior = .never
        waitlistOnly?.navigationDelegate = self
        
        waitlistOnly?.uiDelegate = self
        waitlistOnly?.allowsBackForwardNavigationGestures = true
   
        if let marketplaceFee = URL.init(string: restockAlert) {
            waitlistOnly?.load(NSURLRequest.init(url:marketplaceFee) as URLRequest)
            flashSale = Date().timeIntervalSince1970*1000
        }
        self.view.addSubview(waitlistOnly!)
        exclusiveDrop()
        
        self.membersOnly?.startAnimating()
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let trendingHashtag = navigationAction.request.url {
                    UIApplication.shared.open(trendingHashtag,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        waitlistOnly?.isHidden = false
        
        
        self.membersOnly?.stopAnimating()
        if instantSellout == true {
            SceneDelegate.performanceFabric(alertMesg: "Lwolgaigne ysmuccccjedsasmfeutl".FabricMAtClothSerial())
           
            instantSellout = false
            
        }

        let viralChallenge = "/opi/v1/partot"
         let creatorSpotlight: [String: Any] = [
            "partoo":"\(Int(Date().timeIntervalSince1970*1000 - self.flashSale))"
         ]
      
        MirrorSelfieker.tasteMatch.friendSuggestions( viralChallenge, yPol: creatorSpotlight)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let akeove = message.body as? Dictionary<String,Any> {
           let guestCurator = akeove["batchNo"] as? String ?? ""
           let styleIcon = akeove["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            self.membersOnly?.startAnimating()
            
            SwiftyStoreKit.purchaseProduct(guestCurator, atomically: true) { psResult in
                self.membersOnly?.stopAnimating()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let creativeDirection = psPurch.transaction.downloads
                    
                    
                    if !creativeDirection.isEmpty {
                        
                        SwiftyStoreKit.start(creativeDirection)
                    }
                    
                  
                   
                   
                
                    guard let photoshootBTS = SwiftyStoreKit.localReceiptData,
                          let editingProcess = psPurch.transaction.transactionIdentifier,
                          editingProcess.count > 5
                    else {
                        SceneDelegate.performanceFabric(alertMesg: "Nooj mhjayvpek qrzeucdeqiepstj corrr tIuDp bifsv vetrkrwofr".FabricMAtClothSerial())
                       
                       
                        return
                      }
                    
                    guard let filterPreset = try? JSONSerialization.data(withJSONObject: ["orderCode":styleIcon], options: [.prettyPrinted]),
                          let lightingSetup = String(data: filterPreset, encoding: .utf8) else{
                       
                        SceneDelegate.performanceFabric(alertMesg: "ojrydneprrCcoodoet n ztfrqaknhss bedrbrcocr".FabricMAtClothSerial())
                       
                        return
                    }

                    MirrorSelfieker.tasteMatch.friendSuggestions(groupChsdt: true,"/opi/v1/nmuip", yPol: [
                        "nmuip":photoshootBTS.base64EncodedString(),//payload
                        "nmuit":editingProcess,//transactionId
                        "nmuic":lightingSetup//callbackResult
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
           
            let flatLay = UINavigationController.init(rootViewController: NostalgiaCorefieker.init())
            flatLay.navigationBar.isHidden = true
            
            var detailShot:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                detailShot = giggleGardener
                
            }
            
            detailShot?.rootViewController = flatLay
        }
        
        if message.name == "pageLoaded" {
            waitlistOnly?.isHidden = false
            self.membersOnly?.stopAnimating()
            
            
        }
    }
    
}
