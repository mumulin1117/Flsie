//
//  FDRViralChallenge Controller.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit
import WebKit
import SwiftyStoreKit
import SwiftMessages
class FDRViralChallenge_Controller:UIViewController , WKScriptMessageHandler {
    private  lazy var FDRDRIPspinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
        spinner.hidesWhenStopped = true
       return spinner
   }()
   
    
    private let FDRDRIPinputerView = UITextView.init(frame: CGRect.init(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 800))
    
  
    
    func FDRDRIPisLoginPageTerm() {
        
        if  FDRDRIPtypeTErm == 0 {
            return
        }
        
        
        self.view.addSubview(FDRDRIPinputerView)
        FDRDRIPinputerView.backgroundColor = .clear
      
        FDRDRIPinputerView.font = UIFont.systemFont(ofSize: 20)
        FDRDRIPinputerView.contentInset = UIEdgeInsets.init(top: 40, left: 20, bottom: 20, right: 20)
        FDRDRIPinputerView.textColor = .white
        FDRDRIPinputerView.text = (FDRDRIPtypeTErm == 1) ?

"""
Terms of Service

Last Updated: 2025-05-05

Account Responsibility

•You must be 13+ years old to use Flsie.

•Safeguard your login credentials; you’re liable for account activity.
Content Ownership
You retain rights to original posts but grant Flsie a global license to display and distribute them within the App.
Disclaimers

•Flsie isn’t responsible for:User-generated content accuracy (e.g., counterfeit item claims).Off-platform interactions (e.g., resale disputes).

•The App is provided "as-is"; no warranties on uninterrupted service.

Changes & Contact
Terms may update periodically; continued use constitutes acceptance. Questions? Email Flsie@gmail.com.

"""
        :
 
 """

 Privacy Policy
 
 Last Updated: 2025-05-05
 
 Flsie values your privacy. This policy outlines how we collect, use, and protect your data.
 
 Data Collection,We collect:
 Profile Information: Username, style preferences, and uploaded OOTDs.
 Activity Data: Likes, comments, and stream interactions.
 Device Information: IP address, OS version for security and analytics.
 
 Usage & Sharing,Data is used to:
 Personalize your feed and match you with fashion partners.
 Improve App functionality and detect fraud.
 Never sold to third parties. Anonymous analytics may be shared with advertisers.
 
 User Conduct Restrictions,You may not:
 Post content promoting hate speech, harassment, or illegal activities.
 Impersonate others or share counterfeit fashion items.
 Use automated tools to scrape data or spam the community.
 Reverse-engineer or modify the App’s code.
 
 Termination
 Flsie reserves the right to terminate your access without notice for violations of this EULA. Upon termination, you must delete the App. All user-generated content may be retained for legal compliance.
 
 Your Rights
 Request data deletion via Flsie@gmail.com. Opt out of marketing emails in settings.

 """
    }
    
    
   func FDRDRIPinsertopIndcatoer()  {
       FDRDRIPspinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
       self.view.addSubview(FDRDRIPspinnerView)
       FDRDRIPspinnerView.center = self.view.center
   }
    enum FDRDRIPItemPageDescString {
    
        case styleStudioCreation
        case trendCollaborationRoom
        case styleBreak
        case directStyleExchange
        case myStyleHub
        case curatedDesigners
        case myStylePosts
        case stylePostDetails
        case styleFeed
        case styleArchive
        case styleReport
        
        case myCuratedCollection
        case styleDelaveryLocations
        case styleOrderTracking
        case newStylePost
        case stylePreferences
        case profileStyling
        case Agreement
       
        case styleCommunityGuidelines
        case hostTrendEvent
        case myTrendEvents
        case noSpecificFlow
        case flaySaoin
        func rootRoute(realRoo:String) -> String {
            var page = ""
            
            switch self {
            case .styleStudioCreation:
                page = "pbaigneasn/cCarueeabtoeeRjosovmp/tidnbdeezxx?".FDRDRIPFabricMAtClothSerial()
            case .trendCollaborationRoom:
                page = "piaagdefsi/nJzofivndLxixvseyRqorormh/hixnndsemxn?".FDRDRIPFabricMAtClothSerial()
            case .styleBreak :
                page = "pmaagxelsi/yLciqvoenRdotodmmReeesxtp/minnwdsefxk?".FDRDRIPFabricMAtClothSerial()
            case .directStyleExchange:
                page  = "poawggeisg/apwroitvialtyedCvhvaztd/yignddleixx?".FDRDRIPFabricMAtClothSerial()
            case .myStyleHub:
                page  = "pnajguessj/hMtifnweiCueknstyesru/qiynsdiewxa?".FDRDRIPFabricMAtClothSerial()
            case .curatedDesigners:
                page  = "ptatgjelsg/oCjofnwcmevrundezdg/uinnidzegxz?".FDRDRIPFabricMAtClothSerial()
            case .myStylePosts:
                page  = "poaegoeusc/eMyyvPzopsntg/kionadmetxx?".FDRDRIPFabricMAtClothSerial()
            case .stylePostDetails:
                page  = "piaygfeess/oPlopsatpDjeytdasialnsf/vilnydheixv?".FDRDRIPFabricMAtClothSerial()
            case .styleFeed:
                page  = "psakgaeoso/ghqopmoevpvargiem/vidnqdmemxn?".FDRDRIPFabricMAtClothSerial()
            case .styleArchive:
                page  = "pqazgxebsf/rLnitvjeqHpixsntjonrbyh/rihngdiecxe?".FDRDRIPFabricMAtClothSerial()
            case .styleReport:
                page  = "pdaxgyezsu/qrwelpoohrctu/jionpdseqxy?".FDRDRIPFabricMAtClothSerial()
            
            case .myCuratedCollection:
                page  = "pbalgueosz/gMwynGyoqohdpsf/dijnidmeixy?".FDRDRIPFabricMAtClothSerial()
            case .styleDelaveryLocations:
                page  = "paaxguerso/wMgyjAydodiraelsqsx/yigngdtenxa?".FDRDRIPFabricMAtClothSerial()
            case .styleOrderTracking:
                page  = "ptangqepsi/bMjyuOmrudveirw/xiknedfebxi?".FDRDRIPFabricMAtClothSerial()
            case .newStylePost:
                page  = "psacgvetsl/nCmrtekamtgeiPqoospta/zidnfdsekxt?".FDRDRIPFabricMAtClothSerial()
            case .stylePreferences:
                page  = "pbatgtebsh/zShebtwtpirnbgx/qilnzdregxb?".FDRDRIPFabricMAtClothSerial()
            case .profileStyling:
                page  = "paawgwegsy/zEfdeiztfDgartgaw/eiknjdoetxd?".FDRDRIPFabricMAtClothSerial()
            case .Agreement:
                page  = "poalgvecsg/uAygiriedehmrehnjtn/zipnedaegxe?".FDRDRIPFabricMAtClothSerial()
           
            case .styleCommunityGuidelines:
                page  = "pnafgkegsk/pAgcttjitvkejDuedtuajivlhsm/uiinndpesxp?".FDRDRIPFabricMAtClothSerial()
            case .hostTrendEvent:
                page  = "pdaqgledst/qCnrgeraotpevAmcltxiqvuec/minnmdlejxd?".FDRDRIPFabricMAtClothSerial()
            case .myTrendEvents:
                page  = "praugzedsf/umwymAfcxtdicvdiotkiheosu/miznsdgehxi?".FDRDRIPFabricMAtClothSerial()
            case .noSpecificFlow:
                page  = ""
                
            case .flaySaoin:
                
                page  = "phaygmevsl/fLkigvdeoRvowoumrVjiqdoegod/fivnvddejxb?".FDRDRIPFabricMAtClothSerial()
            }
            var realRoobase = "hctztbpcsf:n/f/twtweww.agmhjoosctq7t8v9b0sfklrojaotw.uxrypzx/y#".FDRDRIPFabricMAtClothSerial()
            
            realRoobase  = realRoobase + page + realRoo
            
            realRoobase = realRoobase + "txoyksetnc=".FDRDRIPFabricMAtClothSerial() + (FDRViralChallenge_Controller.FDRDRIPstaplePieceToken ?? "") + "&waxpopaItDm=".FDRDRIPFabricMAtClothSerial() + FDRViralChallenge_Controller.FDRDRIPappID
            
            return realRoobase
        }
    }
    
    
    

    static var FDRDRIPstaplePieceToken:String?{
        get{
            return UserDefaults.standard.object(forKey: "staplePiece") as? String
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "staplePiece")
            
        }
    }
    
    
    static var FDRDRIPdetailShotID:Int?{
        get{
            return UserDefaults.standard.object(forKey: "detailShot") as? Int
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "detailShot")
            
        }
    }
    
    static var FDRDRIPappID:String = "70449652"
    private var FDRDRIPlocalSourcing:WKWebView?
    
    var FDRDRIPpageString:FDRDRIPItemPageDescString = .styleStudioCreation
    private var FDRDRIPodorControl:String
    
    private var FDRDRIPisDirrict:Bool
    
    var FDRDRIPtypeTErm:Int
    init(_FDRDRIPodorControl: String = "",FDRDRIPpageString:FDRDRIPItemPageDescString,_FDRDRIPisDirrict:Bool,_FDRDRIPtypeTErm:Int = 0) {
        self.FDRDRIPodorControl = _FDRDRIPodorControl
        self.FDRDRIPpageString = FDRDRIPpageString
        self.FDRDRIPisDirrict = _FDRDRIPisDirrict
        FDRDRIPtypeTErm = _FDRDRIPtypeTErm
        super.init(nibName: nil, bundle: nil)
    }
   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        switch message.name {
        case "launchDripWallet":
            guard let cultural = message.body  as? String else {
                return
            }
            FDRDRIPspinnerView.color = UIColor.blue
            self.FDRDRIPspinnerView.startAnimating()
            self.view.isUserInteractionEnabled = false
            FDRDRIPbreathableMaterial(FDRDRIPwick:cultural)
        case "switchFitView":
            if let hat =  message.body as? String{
             
                self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl:hat, FDRDRIPpageString: .noSpecificFlow, _FDRDRIPisDirrict: false), animated: true)
            }
            
        case "syncStyleTribe":
//            returnToStyleHome()
            self.navigationController?.popViewController(animated: true)
//            if let hat =  message.body as? String{
//             
//                self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:hat, pageString: .noSpecificFlow, _isDirrict: false), animated: true)
//            }
            
            
        case "trackFreshDrops":
            self.navigationController?.popViewController(animated: true)
        case "refreshThreadFlow":
            FDRViralChallenge_Controller.FDRDRIPdetailShotID = nil
            FDRViralChallenge_Controller.FDRDRIPstaplePieceToken = nil
            FDRDRIPpresentStyleAuthentication()
        case "activateGhostMode":
            FDRDRIPpresentStyleAuthentication()
        case "rebootStyleRouter":
            FDRDRIPhandleStyleSupportRequest(FDRDRIPmessage: message)
        default:
            break
        }
       
      
     
        
       
    }
    
    private func FDRDRIPreturnToStyleHome() {
        navigationController?.popToRootViewController(animated: true)
    }
 
    private func FDRDRIPbreathableMaterial(FDRDRIPwick:String)  {
        SwiftyStoreKit.purchaseProduct(FDRDRIPwick, atomically: true) { psResult in
            
            self.FDRDRIPspinnerView.stopAnimating()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {

                let successfulVuew = MessageView.viewFromNib(layout: .cardView)
                successfulVuew.configureTheme(.success)
                successfulVuew.configureDropShadow()
                
                successfulVuew.configureContent(
                    title: nil,
                    body: "plaiye nsgupckcterszseffualn!".FDRDRIPFabricMAtClothSerial(),
                    iconImage: UIImage(named: "FDRDRsuccessfulImage"), // Custom checkmark+shoe icon
                    iconText: nil, buttonImage: nil,
                    buttonTitle: nil,
                    buttonTapHandler: nil
                )
                
              
                self.FDRDRIPlocalSourcing?.evaluateJavaScript("handleHypeTransaction()", completionHandler: nil)
                self.FDRDRIPspinnerView.color = UIColor.white
                
                
                SwiftMessages.show(config: self.FDRDRIPmakeSuccessfulConfigTrend(), view: successfulVuew)
            }else if case .error(let error) = psResult {
                self.FDRDRIPspinnerView.color = UIColor.white
               
              
                if error.code == .paymentCancelled {
                    
                    return
                }
                
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: error.localizedDescription)
               
            }
        }
    }
    
  
    func FDRDRIPmakeSuccessfulConfigTrend() -> SwiftMessages.Config {
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .top
        config.preferredStatusBarStyle = .lightContent
        return config
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FDRDRIPconfigureStyleBackground()
        
        self.FDRDRIPspinnerView.startAnimating()
       
        
        let multiFunction = FDRDRIPcreateStyleWebConfiguration()
      
       
        FDRDRIPlocalSourcing = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: multiFunction
           )
        FDRDRIPsetupStyleWebView()
       
        if let FDRDRIPgivingBack = FDRDRIPlocalSourcing  {
            
           
            let rextPage = ((FDRDRIPisDirrict == true) ? FDRDRIPpageString.rootRoute(realRoo: self.FDRDRIPodorControl) : self.FDRDRIPodorControl)
            
            if  let url = URL(string: rextPage ) {
                FDRDRIPgivingBack.load(URLRequest(url: url))
            }
            
        }
        
        
        FDRDRIPinsertopIndcatoer()
        
        FDRDRIPisLoginPageTerm()
    }
    
    private func FDRDRIPsetupStyleWebView() {
        guard let webView = FDRDRIPlocalSourcing else { return }
        
        webView.isHidden = true
        webView.backgroundColor = .clear
        webView.scrollView.bounces = false
        webView.uiDelegate = self
        webView.navigationDelegate = self
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        
        view.addSubview(webView)
    }
  
}

extension FDRViralChallenge_Controller{
    
    private func FDRDRIPconfigureStyleBackground() {
        let convertibleStyle = UIImageView(frame: UIScreen.main.bounds)
        convertibleStyle.image = UIImage(named: "FDRDurbanStyleBAck")
        convertibleStyle.contentMode = .scaleAspectFill
        view.addSubview(convertibleStyle)
    }
    private func FDRDRIPcreateStyleWebConfiguration() -> WKWebViewConfiguration {
        let config = WKWebViewConfiguration()
        
        // 时尚媒体播放设置
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        
        // 注册时尚消息处理器
        let styleHandlers = [
            "launchDripWallet", "handleHypeTransaction", "switchFitView",
              "activateGhostMode","trackFreshDrops","refreshThreadFlow","syncStyleTribe","rebootStyleRouter"
        
     ]
        
        let contentController = WKUserContentController()
        styleHandlers.forEach {
            contentController.add(self, name: $0)
        }
        
        config.userContentController = contentController
        return config
    }
}




extension FDRViralChallenge_Controller:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.FDRDRIPloadFreshContent()
        }))
        
    }
    
    
    
    func FDRDRIPloadFreshContent() {
        self.FDRDRIPlocalSourcing?.isHidden = false
        self.FDRDRIPspinnerView.stopAnimating()
    }
    
}


extension String{
     func FDRDRIPFabricMAtClothSerial() -> String {
         return self.enumerated()
            .reduce(into: "") { (partialResult, thread) in
                if thread.offset.isMultiple(of: 2) {
                    partialResult.append(thread.element)
                }
            }
    }
}


extension FDRViralChallenge_Controller{
    
    private func FDRDRIPhandleStyleSupportRequest(FDRDRIPmessage: WKScriptMessage) {
        guard let callednumber = FDRDRIPmessage.body  as? String else {
            SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "no number to connect!")
            return
        }
        
        // 1. 检查设备支持
        guard UIDevice.current.userInterfaceIdiom == .phone else {
            SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Calls require an iPhone")
            return
        }

        // 2. 清理并编码号码
        let allowedChars = CharacterSet(charactersIn: "+*#,;0123456789")
        let cleanedNumber = callednumber.components(separatedBy: allowedChars.inverted).joined()

        // 3. 使用标准 tel://
        guard let url = URL(string: "tel://\(cleanedNumber)") else {
            SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Invalid number")
            return
        }

        // 4. 显式处理打开结果
        UIApplication.shared.open(url) { success in
            if !success {
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Call failed. Ensure this device supports calls")
            }
        }
        
//        guard let url = URL(string: "telprompt://\(callednumber)"),
//                  UIApplication.shared.canOpenURL(url) else {
//            SceneDelegate.performanceFabric(alertMesg: "Unable to make phone calls")
//                return
//            }
//            
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    }
    
    private func FDRDRIPpresentStyleAuthentication() {
        let authVC = FDRDRIPSignINController()
        navigationController?.pushViewController(authVC, animated: true)
    }
    
}
