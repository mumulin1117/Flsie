//
//  FDRSSignINController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/15.
//

import UIKit

class FDRSSignINController: UIViewController {
    
    var confidenceBoost:Bool = false
    
    
    @IBOutlet weak var handmadeDetail: UITextField!
    
    
    @IBOutlet weak var effortlessChic: UITextField!
    
    
    @IBOutlet weak var styleIcon: UILabel!
    
    
    @IBOutlet weak var fabricBlend: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        waitlistOnly()
        storytellingThroughFashion()
        
        spinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
        self.view.addSubview(spinnerView)
        spinnerView.center = self.view.center
    }
    
    private lazy var spinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
        spinner.hidesWhenStopped = true
        return spinner
    }()
    
    @IBAction func modelOffDuty(_ sender: UIButton) {
        if confidenceBoost == false {
            let alertcontroller = UIAlertController(title: "Agree to the User Terms", message: "log in and enter app,Please read and agree to our user privacy policy and terms!", preferredStyle: .alert)
            alertcontroller.addAction(UIAlertAction.init(title: "Agree", style: .default, handler: { UIAlertAction in
              let buble =  self.view.viewWithTag(339) as? UIButton
                buble?.isSelected = true
                self.confidenceBoost = true
            }))
            alertcontroller.addAction(UIAlertAction(title: "cancel", style: .default, handler: nil))
            
            self.present(alertcontroller, animated: true)
            return
        }
        
        if let email = handmadeDetail.text,
           email.count > 0,
           let  effor = effortlessChic.text,effor.count > 0{
            let insights: [String: Any] = [
                "lightingSetup": FDRViralChallenge_Controller.appID,
                "editingProcess": email,
                "filterPreset": effor
            ]
            spinnerView.startAnimating()
           
            
            ShippingRating.personalizationSetting(membersOnly: "/kpqfdbfz/faajxqsxnepn", vintage: insights) { responsedata in
                self.spinnerView.stopAnimating()
                guard let response = responsedata as? Dictionary<String,Any> ,
                
                      let user = response["data"] as? Dictionary<String,Any>
                        
                else {
                   
                    self.showFlexTipAlert(message: "The email or password you entered is incorrect")
                    return
                }
                
                FDRViralChallenge_Controller.loginuserID = user["detailShot"] as? Int
                FDRViralChallenge_Controller.loginuserToken = user["staplePiece"] as? String
              
                let maintababr = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabbartControlID") as! UITabBarController
                self.navigationController?.pushViewController(maintababr, animated: false)
                self.showDripSuccessAlert(message: "Log in successful!")
                
            } avantGarde: { backedRrror in
                self.showHypeFailAlert(message: backedRrror.localizedDescription)
            }

            
        }else{
            self.spinnerView.stopAnimating()
            self.showHypeFailAlert(message: "Email and password cannot be empty")
        }
    }
    
    
    @IBAction func filterPreset(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        confidenceBoost = sender.isSelected
    }
    
    func waitlistOnly() {
        handmadeDetail.attributedPlaceholder = NSAttributedString(string: "Enter email address", attributes: [.foregroundColor:UIColor.white])
        styleIcon.isUserInteractionEnabled = true
        styleIcon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gamificationElement)))
        
        handmadeDetail.layer.cornerRadius = 24
        handmadeDetail.layer.masksToBounds = true
    }
    
    func storytellingThroughFashion() {
        effortlessChic.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [.foregroundColor:UIColor.white])
        fabricBlend.isUserInteractionEnabled = true
        fabricBlend.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(rewardSystem)))
        effortlessChic.layer.cornerRadius = 24
        effortlessChic.layer.masksToBounds = true
    }
    
    
    @objc func gamificationElement(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "type=1?", pageString: .Agreement, _isDirrict: true,_typeTErm: 1), animated: true)
    }
    
    
    @objc func rewardSystem(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "type=2?", pageString: .Agreement, _isDirrict: true,_typeTErm: 2), animated: true)
    }
    
    
    
    
}
