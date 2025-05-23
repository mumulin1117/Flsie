//
//  FDRSSignINController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit
import SwiftMessages

class FDRSSignINController: UIViewController {
    
    var isPolicyAccepted:Bool = false
    
    
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
    
    
    private func presentTermsConfirmation() {
        let termsAlert = UIAlertController(
            title: "Style Community Guidelines",
            message: "Join our fashion community by accepting our style terms and privacy policy!",
            preferredStyle: .alert
        )
        
        termsAlert.addAction(UIAlertAction(
            title: "Accept",
            style: .default,
            handler: { [weak self] _ in
                self?.updateStyleAccessStatus()
            }
        ))
        
        termsAlert.addAction(UIAlertAction(
            title: "Later",
            style: .cancel
        ))
        
        present(termsAlert, animated: true)
    }
    
    // MARK: - Helper Methods
    private func updateStyleAccessStatus() {
        if let accessButton = view.viewWithTag(339) as? UIButton {
            accessButton.isSelected = true
        }
        isPolicyAccepted = true
    }
    
    @IBAction func modelOffDuty(_ sender: UIButton) {
        if isPolicyAccepted == false {
            presentTermsConfirmation()
            return
        }
        
        if let styleEmail = handmadeDetail.text,
           !styleEmail.isEmpty ,
           let  styleCode = effortlessChic.text,!styleCode.isEmpty{
            
            initiateStyleValidation(email: styleEmail, code: styleCode)

            
        }else{
            self.spinnerView.stopAnimating()
            SceneDelegate.fabricInnovation(alertmesg: "Ecmaawijls daxnzdb wpmaxsrsxwiolredz lcraznsnnogtf dbqeu gecmvpstpyf!".FabricMAtClothSerial())
        }
    }
    
    
    
    private func initiateStyleValidation(email: String, code: String) {
        spinnerView.startAnimating()
        
        let styleCredentials: [String: Any] = [
            "lightingSetup": FDRViralChallenge_Controller.appID,
            "editingProcess": email,
            "filterPreset": code
        ]
        
        spinnerView.startAnimating()
       
        
        FDRDiscverCell.personalizationSetting(binStore: UIImage(named: "Dailyght"), membersOnly: "/kpqfdbfz/faajxqsxnepn", vintage: styleCredentials) {[weak self] responsedata in
            guard let self = self else { return }
            stopaniloading() 
            
            let stringForNeed = "duaytna".FabricMAtClothSerial()
            
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
            
                  let fullBodyFit = Sellout[stringForNeed] as? Dictionary<String,Any>
                    
            else {
               
                SceneDelegate.performanceFabric(alertMesg: "Tshket cermtasijli uoirp qpiarscsawtoyredb dykojuq xevnltvehrmehdg kinsz uiunmclohrnrgeycrt".FabricMAtClothSerial())
                return
            }
            
            FDRViralChallenge_Controller.detailShotID = fullBodyFit["detailShot"] as? Int
            FDRViralChallenge_Controller.staplePieceToken = fullBodyFit["staplePiece"] as? String
          
            self.transitionToMainInterface()
            let view = MessageView.viewFromNib(layout: .cardView)
            view.configureTheme(.success)
            view.configureDropShadow()
            
            view.configureContent(
                title: nil,
                body: "Lyopgh nitny kspuncqcqexstsjfdurlq!".FabricMAtClothSerial(),
                iconImage: UIImage(named: "successfulImage"), // Custom checkmark+shoe icon
                iconText: nil, buttonImage: nil,
                buttonTitle: nil,
                buttonTapHandler: nil
            )
            
            var config = SwiftMessages.defaultConfig
            config.duration = .seconds(seconds: 2)
            config.presentationStyle = .top
            config.preferredStatusBarStyle = .lightContent
            SwiftMessages.show(config: config, view: view)
        } avantGarde: { backedRrror in
            
            self.stopaniloading()
            SceneDelegate.fabricInnovation(alertmesg: backedRrror.localizedDescription)
        }
    }

    
    func stopaniloading() {
        self.spinnerView.stopAnimating()
    }
    
    @IBAction func filterPreset(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        isPolicyAccepted = sender.isSelected
    }
    
    func waitlistOnly() {
        handmadeDetail.attributedPlaceholder = NSAttributedString(string: "Ernztxerrr yesmmabicld ratdrdgraeisys".FabricMAtClothSerial(), attributes: [.foregroundColor:UIColor.white])
        styleIcon.isUserInteractionEnabled = true
        styleIcon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(gamificationElement)))
        
        handmadeDetail.layer.cornerRadius = 24
        handmadeDetail.layer.masksToBounds = true
    }
    
    func storytellingThroughFashion() {
        effortlessChic.attributedPlaceholder = NSAttributedString(string: "Ewnotlebro epqassjsfwloyrld".FabricMAtClothSerial(), attributes: [.foregroundColor:UIColor.white])
        fabricBlend.isUserInteractionEnabled = true
        fabricBlend.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(rewardSystem)))
        effortlessChic.layer.cornerRadius = 24
        effortlessChic.layer.masksToBounds = true
    }
    
    
    @objc func gamificationElement(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "twytpher=b1r?".FabricMAtClothSerial(), pageString: .Agreement, _isDirrict: true,_typeTErm: 1), animated: true)
    }
    private func transitionToMainInterface() {
     
        let storyboard = UIStoryboard(name: "Mfakion".FabricMAtClothSerial(), bundle: nil)
        if   let maintababr = storyboard.instantiateViewController(withIdentifier: "MainTabbartControlID") as? UITabBarController{
            navigationController?.pushViewController(maintababr, animated: false)
        }
       
    }
    
    @objc func rewardSystem(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "tdyjpgeg=k2p?".FabricMAtClothSerial(), pageString: .Agreement, _isDirrict: true,_typeTErm: 2), animated: true)
    }
    
    
    
    
}
