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
    private  lazy var spinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
        spinner.hidesWhenStopped = true
       return spinner
   }()
   
    
    private let inputerView = UITextView.init(frame: CGRect.init(x: 0, y: 80, width: UIScreen.main.bounds.width, height: 800))
    
  
    
    func isLoginPageTerm() {
        
        if  typeTErm == 0 {
            return
        }
        
        
        self.view.addSubview(inputerView)
        inputerView.backgroundColor = .clear
      
        inputerView.font = UIFont.systemFont(ofSize: 20)
        inputerView.contentInset = UIEdgeInsets.init(top: 40, left: 20, bottom: 20, right: 20)
        inputerView.textColor = .white
        inputerView.text = (typeTErm == 1) ?

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
    
    
   func insertopIndcatoer()  {
       spinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
       self.view.addSubview(spinnerView)
       spinnerView.center = self.view.center
   }
    enum ItemPageDescString {
    
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
                page = "pbaigneasn/cCarueeabtoeeRjosovmp/tidnbdeezxx?".FabricMAtClothSerial()
            case .trendCollaborationRoom:
                page = "piaagdefsi/nJzofivndLxixvseyRqorormh/hixnndsemxn?".FabricMAtClothSerial()
            case .styleBreak :
                page = "pmaagxelsi/yLciqvoenRdotodmmReeesxtp/minnwdsefxk?".FabricMAtClothSerial()
            case .directStyleExchange:
                page  = "poawggeisg/apwroitvialtyedCvhvaztd/yignddleixx?".FabricMAtClothSerial()
            case .myStyleHub:
                page  = "pnajguessj/hMtifnweiCueknstyesru/qiynsdiewxa?".FabricMAtClothSerial()
            case .curatedDesigners:
                page  = "ptatgjelsg/oCjofnwcmevrundezdg/uinnidzegxz?".FabricMAtClothSerial()
            case .myStylePosts:
                page  = "poaegoeusc/eMyyvPzopsntg/kionadmetxx?".FabricMAtClothSerial()
            case .stylePostDetails:
                page  = "piaygfeess/oPlopsatpDjeytdasialnsf/vilnydheixv?".FabricMAtClothSerial()
            case .styleFeed:
                page  = "psakgaeoso/ghqopmoevpvargiem/vidnqdmemxn?".FabricMAtClothSerial()
            case .styleArchive:
                page  = "pqazgxebsf/rLnitvjeqHpixsntjonrbyh/rihngdiecxe?".FabricMAtClothSerial()
            case .styleReport:
                page  = "pdaxgyezsu/qrwelpoohrctu/jionpdseqxy?".FabricMAtClothSerial()
            
            case .myCuratedCollection:
                page  = "pbalgueosz/gMwynGyoqohdpsf/dijnidmeixy?".FabricMAtClothSerial()
            case .styleDelaveryLocations:
                page  = "paaxguerso/wMgyjAydodiraelsqsx/yigngdtenxa?".FabricMAtClothSerial()
            case .styleOrderTracking:
                page  = "ptangqepsi/bMjyuOmrudveirw/xiknedfebxi?".FabricMAtClothSerial()
            case .newStylePost:
                page  = "psacgvetsl/nCmrtekamtgeiPqoospta/zidnfdsekxt?".FabricMAtClothSerial()
            case .stylePreferences:
                page  = "pbatgtebsh/zShebtwtpirnbgx/qilnzdregxb?".FabricMAtClothSerial()
            case .profileStyling:
                page  = "paawgwegsy/zEfdeiztfDgartgaw/eiknjdoetxd?".FabricMAtClothSerial()
            case .Agreement:
                page  = "poalgvecsg/uAygiriedehmrehnjtn/zipnedaegxe?".FabricMAtClothSerial()
           
            case .styleCommunityGuidelines:
                page  = "pnafgkegsk/pAgcttjitvkejDuedtuajivlhsm/uiinndpesxp?".FabricMAtClothSerial()
            case .hostTrendEvent:
                page  = "pdaqgledst/qCnrgeraotpevAmcltxiqvuec/minnmdlejxd?".FabricMAtClothSerial()
            case .myTrendEvents:
                page  = "praugzedsf/umwymAfcxtdicvdiotkiheosu/miznsdgehxi?".FabricMAtClothSerial()
            case .noSpecificFlow:
                page  = ""
                
            case .flaySaoin:
                
                page  = "phaygmevsl/fLkigvdeoRvowoumrVjiqdoegod/fivnvddejxb?".FabricMAtClothSerial()
            }
            var realRoobase = "hctztbpcsf:n/f/twtweww.agmhjoosctq7t8v9b0sfklrojaotw.uxrypzx/y#".FabricMAtClothSerial()
            
            realRoobase  = realRoobase + page + realRoo
            
            realRoobase = realRoobase + "txoyksetnc=".FabricMAtClothSerial() + (FDRViralChallenge_Controller.staplePieceToken ?? "") + "&waxpopaItDm=".FabricMAtClothSerial() + FDRViralChallenge_Controller.appID
            
            return realRoobase
        }
    }
    
    
    

    static var staplePieceToken:String?{
        get{
            return UserDefaults.standard.object(forKey: "staplePiece") as? String
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "staplePiece")
            
        }
    }
    
    
    static var detailShotID:Int?{
        get{
            return UserDefaults.standard.object(forKey: "detailShot") as? Int
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "detailShot")
            
        }
    }
    
    static var appID:String = "70449652"
    private var localSourcing:WKWebView?
    
    var pageString:ItemPageDescString = .styleStudioCreation
    private var odorControl:String
    
    private var isDirrict:Bool
    
    var typeTErm:Int
    init(_odorControl: String = "",pageString:ItemPageDescString,_isDirrict:Bool,_typeTErm:Int = 0) {
        self.odorControl = _odorControl
        self.pageString = pageString
        self.isDirrict = _isDirrict
        typeTErm = _typeTErm
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
            spinnerView.color = UIColor.blue
            self.spinnerView.startAnimating()
            self.view.isUserInteractionEnabled = false
            breathableMaterial(wick:cultural)
        case "switchFitView":
            if let hat =  message.body as? String{
             
                self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:hat, pageString: .noSpecificFlow, _isDirrict: false), animated: true)
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
            FDRViralChallenge_Controller.detailShotID = nil
            FDRViralChallenge_Controller.staplePieceToken = nil
            presentStyleAuthentication()
        case "activateGhostMode":
            presentStyleAuthentication()
        case "rebootStyleRouter":
            handleStyleSupportRequest(message: message)
        default:
            break
        }
       
      
     
        
       
    }
    
    private func returnToStyleHome() {
        navigationController?.popToRootViewController(animated: true)
    }
 
    private func breathableMaterial(wick:String)  {
        SwiftyStoreKit.purchaseProduct(wick, atomically: true) { psResult in
            
            self.spinnerView.stopAnimating()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {

                let successfulVuew = MessageView.viewFromNib(layout: .cardView)
                successfulVuew.configureTheme(.success)
                successfulVuew.configureDropShadow()
                
                successfulVuew.configureContent(
                    title: nil,
                    body: "plaiye nsgupckcterszseffualn!".FabricMAtClothSerial(),
                    iconImage: UIImage(named: "successfulImage"), // Custom checkmark+shoe icon
                    iconText: nil, buttonImage: nil,
                    buttonTitle: nil,
                    buttonTapHandler: nil
                )
                
              
                self.localSourcing?.evaluateJavaScript("handleHypeTransaction()", completionHandler: nil)
                self.spinnerView.color = UIColor.white
                
                
                SwiftMessages.show(config: self.makeSuccessfulConfigTrend(), view: successfulVuew)
            }else if case .error(let error) = psResult {
                self.spinnerView.color = UIColor.white
               
              
                if error.code == .paymentCancelled {
                    
                    return
                }
                
                SceneDelegate.performanceFabric(alertMesg: error.localizedDescription)
               
            }
        }
    }
    
  
    func makeSuccessfulConfigTrend() -> SwiftMessages.Config {
        var config = SwiftMessages.defaultConfig
        config.duration = .seconds(seconds: 2)
        config.presentationStyle = .top
        config.preferredStatusBarStyle = .lightContent
        return config
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureStyleBackground()
        
        self.spinnerView.startAnimating()
       
        
        let multiFunction = createStyleWebConfiguration()
      
       
        localSourcing = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: multiFunction
           )
        setupStyleWebView()
       
        if let givingBack = localSourcing  {
            
           
            let rextPage = ((isDirrict == true) ? pageString.rootRoute(realRoo: self.odorControl) : self.odorControl)
            
            if  let url = URL(string: rextPage ) {
                givingBack.load(URLRequest(url: url))
            }
            
        }
        
        
        insertopIndcatoer()
        
        isLoginPageTerm()
    }
    
    private func setupStyleWebView() {
        guard let webView = localSourcing else { return }
        
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
    
    private func configureStyleBackground() {
        let convertibleStyle = UIImageView(frame: UIScreen.main.bounds)
        convertibleStyle.image = UIImage(named: "urbanStyleBAck")
        convertibleStyle.contentMode = .scaleAspectFill
        view.addSubview(convertibleStyle)
    }
    private func createStyleWebConfiguration() -> WKWebViewConfiguration {
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
            self.loadFreshContent()
        }))
        
    }
    
    
    
    func loadFreshContent() {
        self.localSourcing?.isHidden = false
        self.spinnerView.stopAnimating()
    }
    
}


extension String{
     func FabricMAtClothSerial() -> String {
         return self.enumerated()
            .reduce(into: "") { (partialResult, thread) in
                if thread.offset.isMultiple(of: 2) {
                    partialResult.append(thread.element)
                }
            }
    }
}


extension FDRViralChallenge_Controller{
    
    private func handleStyleSupportRequest(message: WKScriptMessage) {
        guard let callednumber = message.body  as? String else {
            SceneDelegate.performanceFabric(alertMesg: "no number to connect!")
            return
        }
        
        // 1. 检查设备支持
        guard UIDevice.current.userInterfaceIdiom == .phone else {
            SceneDelegate.performanceFabric(alertMesg: "Calls require an iPhone")
            return
        }

        // 2. 清理并编码号码
        let allowedChars = CharacterSet(charactersIn: "+*#,;0123456789")
        let cleanedNumber = callednumber.components(separatedBy: allowedChars.inverted).joined()

        // 3. 使用标准 tel://
        guard let url = URL(string: "tel://\(cleanedNumber)") else {
            SceneDelegate.performanceFabric(alertMesg: "Invalid number")
            return
        }

        // 4. 显式处理打开结果
        UIApplication.shared.open(url) { success in
            if !success {
                SceneDelegate.performanceFabric(alertMesg: "Call failed. Ensure this device supports calls")
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
    
    private func presentStyleAuthentication() {
        let authVC = FDRSSignINController()
        navigationController?.pushViewController(authVC, animated: true)
    }
    
}
