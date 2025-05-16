//
//  FDRViralChallenge Controller.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/15.
//

import UIKit
import WebKit
import SwiftyStoreKit
class FDRViralChallenge_Controller:UIViewController , WKScriptMessageHandler {
    lazy var spinnerView: UIActivityIndicatorView = {
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
 Activity Data: Likes, comments, and live-stream interactions.
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
    enum ItemPageDescString:String {
    
        case createroom = "pages/CreateRoom/index?"
        case JoinLiveRoom = "pages/JoinLiveRoom/index?"
        case LiveRoomRest = "pages/LiveRoomRest/index?"
        case privateChat = "pages/privateChat/index?"
        case MineCenter = "pages/MineCenter/index?"
        case Concerned = "pages/Concerned/index?"
        case MyPost = "pages/MyPost/index?"
        case PostDetails = "pages/PostDetails/index?"
        case homepage = "pages/homepage/index?"
        case LiveHistory = "pages/LiveHistory/index?"
        case report = "pages/report/index?"
        
        case MyGoods = "pages/MyGoods/index?"
        case MyAddress = "pages/MyAddress/index?"
        case MyOrder = "pages/MyOrder/index?"
        case CreatePost = "pages/CreatePost/index?"
        case Setting = "pages/Setting/index?"
        case EditData = "pages/EditData/index?"
        case Agreement = "pages/Agreement/index?"
       
        case ActiveDetails = "pages/ActiveDetails/index?"
        case CreateActive = "pages/CreateActive/index?"
        case myActivities = "pages/myActivities/index?"
        case nothing = ""
        
        func rootRoute(realRoo:String) -> String {
            var realRoobase = "https://www.ghost7890float.xyz/#"
            
            realRoobase  = realRoobase + self.rawValue + realRoo
            
            realRoobase = realRoobase + "token=" + (FDRViralChallenge_Controller.loginuserToken ?? "") + "&appID=" + FDRViralChallenge_Controller.appID
            
            return realRoobase
        }
    }
    
    
    

    static var loginuserToken:String?{
        get{
            return UserDefaults.standard.object(forKey: "staplePiece") as? String
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "staplePiece")
            
        }
    }
    
    
    static var loginuserID:Int?{
        get{
            return UserDefaults.standard.object(forKey: "detailShot") as? Int
        }set{
          
            UserDefaults.standard.set(newValue, forKey: "detailShot")
            
        }
    }
    
    static var appID:String = "70449652"
    private var localSourcing:WKWebView?
    
    var pageString:ItemPageDescString = .createroom
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
        if message.name == "launchDripWallet" {
            guard let cultural = message.body  as? String else {
                return
            }
            spinnerView.color = UIColor.white
            self.spinnerView.startAnimating()
            self.view.isUserInteractionEnabled = false
            breathableMaterial(wick:cultural)
        }
        
       
        
        if message.name == "switchFitView" {
            if let hat =  message.body as? String{
             
                self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:hat, pageString: .nothing, _isDirrict: false), animated: true)
            }
    
        }
        if message.name == "syncStyleTribe" {
            self.navigationController?.popToRootViewController(animated: true)
          
        }
           
        if message.name == "trackFreshDrops" {
            self.navigationController?.popViewController(animated: true)
          
        }
        
        if message.name == "refreshThreadFlow" {
            FDRViralChallenge_Controller.loginuserID = nil
            FDRViralChallenge_Controller.loginuserToken = nil
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
         
        }
        
        if message.name == "activateGhostMode" {
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
        }
        
        if message.name == "rebootStyleRouter" {
            //拨打电话
            guard let callednumber = message.body  as? String else {
                return
            }
            
            guard let url = URL(string: "telprompt://\(callednumber)"),
                      UIApplication.shared.canOpenURL(url) else {
                self.showFlexTipAlert(message: "Unable to make phone calls")
                    return
                }
                
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
        }
        
        
       
    }
    
    
 
    private func breathableMaterial(wick:String)  {
        SwiftyStoreKit.purchaseProduct(wick, atomically: true) { psResult in
            self.spinnerView.color = UIColor.white
            self.spinnerView.stopAnimating()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let psPurch) = psResult {
               
                let modularSystem = psPurch.transaction.downloads
                if !modularSystem.isEmpty {
                    SwiftyStoreKit.start(modularSystem)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
               
                self.showDripSuccessAlert(message: "pay successful!")
                self.localSourcing?.evaluateJavaScript("handleHypeTransaction()", completionHandler: nil)
            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                self.showFlexTipAlert(message: error.localizedDescription)
               
            }
        }
    }
    
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let convertibleStyle = UIImageView(frame: UIScreen.main.bounds)
        
        convertibleStyle.image = UIImage.init(named: "pictureliveback")
        convertibleStyle.contentMode = .scaleAspectFill
        view.addSubview(convertibleStyle)
        
        self.spinnerView.startAnimating()
       
        
        let multiFunction = WKWebViewConfiguration()
      
        multiFunction.allowsInlineMediaPlayback = true
        multiFunction.mediaTypesRequiringUserActionForPlayback = []
     
        let insights = WKUserContentController()
     
       
        [
               "launchDripWallet", "handleHypeTransaction", "switchFitView",
                 "activateGhostMode","trackFreshDrops","refreshThreadFlow","syncStyleTribe","rebootStyleRouter"
           
        ].forEach { handler in
            insights.add(self, name: handler)
        }
        multiFunction.userContentController = insights
        localSourcing = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: multiFunction
           )
        localSourcing?.navigationDelegate = self
        
        localSourcing?.isHidden = true
        localSourcing?.backgroundColor = .clear
        localSourcing?.scrollView.bounces = false
        localSourcing?.uiDelegate = self
       
        
        localSourcing?.scrollView.contentInsetAdjustmentBehavior = .never
        
       
        if let givingBack = localSourcing  {
            
            self.view.addSubview(givingBack)
            let rextPage = ((isDirrict == true) ? pageString.rootRoute(realRoo: self.odorControl) : self.odorControl)
            
            if  let url = URL(string: rextPage ) {
                givingBack.load(URLRequest(url: url))
            }
            
        }
        
        
        insertopIndcatoer()
        
        isLoginPageTerm()
    }
    
   
  
}


extension FDRViralChallenge_Controller:WKNavigationDelegate,WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.localSourcing?.isHidden = false
            self.spinnerView.stopAnimating()
        }))
        
    }
    
}
