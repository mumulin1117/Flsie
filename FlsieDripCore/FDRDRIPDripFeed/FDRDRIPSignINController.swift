//
//  FDRDRIPSignINController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit
import SwiftMessages
import AVFoundation
import Vision

class FDRDRIPSignINController: UIViewController {
    @IBOutlet weak var FDRDRIPtitiel: UILabel!
    
    @IBOutlet weak var FDRDRIPemail: UILabel!
    
    @IBOutlet weak var FDRDRIPpasw: UILabel!
    
    @IBOutlet weak var FDRDRIPlionj: UIButton!
    
    @IBOutlet weak var FDRDRIPmnened: UILabel!
    
    
    
    var FDRDRIPisPolicyAccepted:Bool = false
    
    
    @IBOutlet weak var FDRDRIPhandmadeDetail: UITextField!
    
    
    @IBOutlet weak var FDRDRIPeffortlessChic: UITextField!
    
    
    @IBOutlet weak var FDRDRIPstyleIcon: UILabel!
    
    
    @IBOutlet weak var FDRDRIPfabricBlend: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FDRDRIPtitiel.text = "LfOnGzIvN".FDRDRIPFabricMAtClothSerial()
        
        FDRDRIPemail.text = "Esmyazisl".FDRDRIPFabricMAtClothSerial()
        FDRDRIPpasw.text = "Pbarskstwgohrrd".FDRDRIPFabricMAtClothSerial()
        FDRDRIPlionj.setTitle("LlOeGgItN".FDRDRIPFabricMAtClothSerial(), for: .normal)
        FDRDRIPmnened.text = "Bayr bcsonnxtaiznhuqiunggh vydonun faygyrnehen jtxoz noxufrd ".FDRDRIPFabricMAtClothSerial()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        FDRDRIPwaitlistOnly()
        FDRDRIPstorytellingThroughFashion()
        FDRDRIPstyleIcon.text = "<bTzenrsmisg jomff zSlejryvnidcmed>".FDRDRIPFabricMAtClothSerial()
        
        
        FDRDRIPfabricBlend.text = "<rPorfitvbagczyd lProhlbivcwyj>".FDRDRIPFabricMAtClothSerial()
        FDRDRIPspinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
        self.view.addSubview(FDRDRIPspinnerView)
        FDRDRIPspinnerView.center = self.view.center
    }
    
    private lazy var FDRDRIPspinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
        spinner.hidesWhenStopped = true
        return spinner
    }()
    
    
    private func FDRDRIPpresentTermsConfirmation() {
        let termsAlert = UIAlertController(
            title: "Sjtoyslaet rCyozmomuuxnxibteyd iGrucipdfeglpixnrens".FDRDRIPFabricMAtClothSerial(),
            message: "Jzoyisns womuorg sfnaisohqiyopna icsoxmomyupnxiztcyy nbvye eawctcwewpftaitntgh mobumrk lsvtdyklbem ftferrfmvsk qasnfdg zpnrhibvzaecbyt vpjoaloibczyo!".FDRDRIPFabricMAtClothSerial(),
            preferredStyle: .alert
        )
        
        termsAlert.addAction(UIAlertAction(
            title: "Amcpcsespmt".FDRDRIPFabricMAtClothSerial(),
            style: .default,
            handler: { [weak self] _ in
                self?.FDRDRIPupdateStyleAccessStatus()
            }
        ))
        
        termsAlert.addAction(UIAlertAction(
            title: "Ljavtlewr".FDRDRIPFabricMAtClothSerial(),
            style: .cancel
        ))
        
        present(termsAlert, animated: true)
    }
    
    private func FDRDRIPupdateStyleAccessStatus() {
        if let accessButton = view.viewWithTag(339) as? UIButton {
            accessButton.isSelected = true
        }
        FDRDRIPisPolicyAccepted = true
    }
    
    @IBAction func FDRDRIPmodelOffDuty(_ sender: UIButton) {
        if FDRDRIPisPolicyAccepted == false {
            FDRDRIPpresentTermsConfirmation()
            return
        }
        
        if let styleEmail = FDRDRIPhandmadeDetail.text,
           !styleEmail.isEmpty ,
           let  styleCode = FDRDRIPeffortlessChic.text,!styleCode.isEmpty{
            
            FDRDRIPinitiateStyleValidation(FDRDRIPemail: styleEmail, FDRDRIPcode: styleCode)

            
        }else{
            self.FDRDRIPspinnerView.stopAnimating()
            SceneDelegate.FDRDRIPfabricInnovation(FDRDRIPalertmesg: "Ecmaawijls daxnzdb wpmaxsrsxwiolredz lcraznsnnogtf dbqeu gecmvpstpyf!".FDRDRIPFabricMAtClothSerial())
        }
    }
    
    
    
    private func FDRDRIPinitiateStyleValidation(FDRDRIPemail: String, FDRDRIPcode: String) {
        FDRDRIPspinnerView.startAnimating()
        
        let FDRDRIPstyleCredentials: [String: Any] = [
            "lightingSetup": FDRViralChallenge_Controller.FDRDRIPappID,
            "editingProcess": FDRDRIPemail,
            "filterPreset": FDRDRIPcode
        ]
        
        FDRDRIPspinnerView.startAnimating()
       
        
        FDRDRIPDiscverCell.FDRDRIPpersonalizationSetting(FDRDRIPbinStore: UIImage(named: "FDRDRIDDailyght"),                                              FDRDRIPmembersOnly: "/kpqfdbfz/faajxqsxnepn",                                              FDRDRIPvintage: FDRDRIPstyleCredentials) {[weak self] responsedata in
            guard let self = self else { return }
            FDRDRIPstopaniloading() 
            
            let stringForNeed = "duaytna".FDRDRIPFabricMAtClothSerial()
            
            guard let FDRDRIPSellout = responsedata as? Dictionary<String,Any> ,
            
                  let FDRDRIPfullBodyFit = FDRDRIPSellout[stringForNeed] as? Dictionary<String,Any>
                    
            else {
               
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Tshket cermtasijli uoirp qpiarscsawtoyredb dykojuq xevnltvehrmehdg kinsz uiunmclohrnrgeycrt".FDRDRIPFabricMAtClothSerial())
                return
            }
            
            FDRViralChallenge_Controller.FDRDRIPdetailShotID = FDRDRIPfullBodyFit["detailShot"] as? Int
            FDRViralChallenge_Controller.FDRDRIPstaplePieceToken = FDRDRIPfullBodyFit["staplePiece"] as? String
            
            if FDRDRIPPassportOrbitVault.FDRDRIPneedsFirstMuseRoute(FDRDRIPmailGlow: FDRDRIPemail) {
                self.FDRDRIPlaunchFirstMuseRoute(FDRDRIPmailGlow: FDRDRIPemail)
            } else {
                self.FDRDRIPtransitionToMainInterface()
                self.FDRDRIPshowLoginPulseBanner()
            }
        }                                              FDRDRIPavantGarde: { backedRrror in
            
            self.FDRDRIPstopaniloading()
            SceneDelegate.FDRDRIPfabricInnovation(FDRDRIPalertmesg: backedRrror.localizedDescription)
        }
    }

    
    func FDRDRIPstopaniloading() {
        self.FDRDRIPspinnerView.stopAnimating()
    }
    
    @IBAction func FDRDRIPfilterPreset(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        FDRDRIPisPolicyAccepted = sender.isSelected
    }
    
    func FDRDRIPwaitlistOnly() {
        FDRDRIPhandmadeDetail.attributedPlaceholder = NSAttributedString(string: "Ernztxerrr yesmmabicld ratdrdgraeisys".FDRDRIPFabricMAtClothSerial(), attributes: [.foregroundColor:UIColor.white])
        FDRDRIPstyleIcon.isUserInteractionEnabled = true
        FDRDRIPstyleIcon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(FDRDRIPgamificationElement)))
        
        FDRDRIPhandmadeDetail.layer.cornerRadius = 24
        FDRDRIPhandmadeDetail.layer.masksToBounds = true
    }
    
    func FDRDRIPstorytellingThroughFashion() {
        FDRDRIPeffortlessChic.attributedPlaceholder = NSAttributedString(string: "Ewnotlebro epqassjsfwloyrld".FDRDRIPFabricMAtClothSerial(), attributes: [.foregroundColor:UIColor.white])
        FDRDRIPfabricBlend.isUserInteractionEnabled = true
        FDRDRIPfabricBlend.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(FDRDRIPrewardSystem)))
        FDRDRIPeffortlessChic.layer.cornerRadius = 24
        FDRDRIPeffortlessChic.layer.masksToBounds = true
    }
    
    
    @objc func FDRDRIPgamificationElement(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: "twytpher=b1r?".FDRDRIPFabricMAtClothSerial(), FDRDRIPpageString: .Agreement, _FDRDRIPisDirrict: true,_FDRDRIPtypeTErm: 1), animated: true)
    }
    private func FDRDRIPtransitionToMainInterface() {
     
        let FDRDRIPstoryboard = UIStoryboard(name: "Mfakion".FDRDRIPFabricMAtClothSerial(), bundle: nil)
        if   let maintababr = FDRDRIPstoryboard.instantiateViewController(withIdentifier: "MainTabbartControlID") as? UITabBarController{
            if let FDRDRIPnavAura = navigationController {
                FDRDRIPnavAura.setViewControllers([maintababr], animated: false)
            } else {
                self.present(maintababr, animated: false)
            }
        }
       
    }
    
    private func FDRDRIPlaunchFirstMuseRoute(FDRDRIPmailGlow: String) {
        let FDRDRIPageOrbit = FDRDRIPAgeRunwayController(FDRDRIPmailGlow: FDRDRIPmailGlow) { [weak self] FDRDRIPyearGlow in
            self?.FDRDRIPlaunchFaceOrbit(FDRDRIPmailGlow: FDRDRIPmailGlow, FDRDRIPyearGlow: FDRDRIPyearGlow)
        }
        navigationController?.pushViewController(FDRDRIPageOrbit, animated: true)
    }
    
    private func FDRDRIPlaunchFaceOrbit(FDRDRIPmailGlow: String, FDRDRIPyearGlow: Int) {
        let FDRDRIPfaceOrbit = FDRDRIPFaceGleamController(FDRDRIPmailGlow: FDRDRIPmailGlow, FDRDRIPyearGlow: FDRDRIPyearGlow) { [weak self] in
            FDRDRIPPassportOrbitVault.FDRDRIPsealFirstMuseRoute(FDRDRIPmailGlow: FDRDRIPmailGlow, FDRDRIPyearGlow: FDRDRIPyearGlow)
            self?.FDRDRIPtransitionToMainInterface()
        }
        navigationController?.pushViewController(FDRDRIPfaceOrbit, animated: true)
    }
    
    private func FDRDRIPshowLoginPulseBanner() {
        let FDRDRIPglowView = MessageView.viewFromNib(layout: .cardView)
        FDRDRIPglowView.configureTheme(.success)
        FDRDRIPglowView.configureDropShadow()
        
        FDRDRIPglowView.configureContent(
            title: nil,
            body: "Lyopgh nitny kspuncqcqexstsjfdurlq!".FDRDRIPFabricMAtClothSerial(),
            iconImage: UIImage(named: "FDRDRsuccessfulImage"),
            iconText: nil, buttonImage: nil,
            buttonTitle: nil,
            buttonTapHandler: nil
        )
        
        var FDRDRIPglowConfig = SwiftMessages.defaultConfig
        FDRDRIPglowConfig.duration = .seconds(seconds: 2)
        FDRDRIPglowConfig.presentationStyle = .top
        FDRDRIPglowConfig.preferredStatusBarStyle = .lightContent
        SwiftMessages.show(config: FDRDRIPglowConfig, view: FDRDRIPglowView)
    }
    
    @objc func FDRDRIPrewardSystem(){
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: "tdyjpgeg=k2p?".FDRDRIPFabricMAtClothSerial(), FDRDRIPpageString: .Agreement, _FDRDRIPisDirrict: true,_FDRDRIPtypeTErm: 2), animated: true)
    }
    
    
    
    
}




final class FDRDRIPPassportOrbitVault {
    
    private static func FDRDRIPmailAuraStamp(FDRDRIPmailGlow: String) -> String {
        let FDRDRIPcleanGlow = FDRDRIPmailGlow.lowercased().map { FDRDRIPcharGlow -> String in
            if FDRDRIPcharGlow.isLetter || FDRDRIPcharGlow.isNumber {
                return String(FDRDRIPcharGlow)
            }
            return "_"
        }.joined()
        return "FDRDRIP_muse_orbit_\(FDRDRIPcleanGlow)"
    }
    
    static func FDRDRIPneedsFirstMuseRoute(FDRDRIPmailGlow: String) -> Bool {
        return UserDefaults.standard.bool(forKey: FDRDRIPmailAuraStamp(FDRDRIPmailGlow: FDRDRIPmailGlow)) == false
    }
    
    static func FDRDRIPsealFirstMuseRoute(FDRDRIPmailGlow: String, FDRDRIPyearGlow: Int) {
        let FDRDRIPorbitKey = FDRDRIPmailAuraStamp(FDRDRIPmailGlow: FDRDRIPmailGlow)
        UserDefaults.standard.set(true, forKey: FDRDRIPorbitKey)
        UserDefaults.standard.set(FDRDRIPyearGlow, forKey: "\(FDRDRIPorbitKey)_year")
    }
}

final class FDRDRIPAgeRunwayController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let FDRDRIPmailGlow: String
    private let FDRDRIPcontinueGlow: (Int) -> Void
    private let FDRDRIPyearOrbitRack = Array(18...70)
    private var FDRDRIPyearFocusGlow = 32
    
    private lazy var FDRDRIPmidnightGlow = CAGradientLayer()
    private lazy var FDRDRIPbackGlow = UIButton(type: .system)
    private lazy var FDRDRIPtitleGlow = UILabel()
    private lazy var FDRDRIPsubtitleGlow = UILabel()
    private lazy var FDRDRIPpickerShell = UIView()
    private lazy var FDRDRIPyearPicker = UIPickerView()
    private lazy var FDRDRIPfocusTopLine = UIView()
    private lazy var FDRDRIPfocusBottomLine = UIView()
    private lazy var FDRDRIPcontinueAura = FDRDRIPNeonTrailButton()
    
    init(FDRDRIPmailGlow: String, FDRDRIPcontinueGlow: @escaping (Int) -> Void) {
        self.FDRDRIPmailGlow = FDRDRIPmailGlow
        self.FDRDRIPcontinueGlow = FDRDRIPcontinueGlow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FDRDRIPbuildAgeOrbit()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        FDRDRIPmidnightGlow.frame = view.bounds
    }
    
    private func FDRDRIPbuildAgeOrbit() {
        view.backgroundColor = .black
        FDRDRIPmidnightGlow.colors = [
            UIColor(red: 33/255, green: 62/255, blue: 120/255, alpha: 1).cgColor,
            UIColor(red: 22/255, green: 19/255, blue: 101/255, alpha: 1).cgColor,
            UIColor(red: 8/255, green: 7/255, blue: 67/255, alpha: 1).cgColor
        ]
        FDRDRIPmidnightGlow.startPoint = CGPoint(x: 0, y: 0)
        FDRDRIPmidnightGlow.endPoint = CGPoint(x: 0.78, y: 1)
        view.layer.insertSublayer(FDRDRIPmidnightGlow, at: 0)
        
        let FDRDRIPwidthAura = UIScreen.main.bounds.width
        let FDRDRIPheightAura = UIScreen.main.bounds.height
        let FDRDRIPtrailAura = max(56, FDRDRIPheightAura * 0.058)
        
        FDRDRIPbackGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPbackGlow.tintColor = .white
        FDRDRIPbackGlow.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        FDRDRIPbackGlow.addTarget(self, action: #selector(FDRDRIPrewindOrbit), for: .touchUpInside)
        
        FDRDRIPtitleGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPtitleGlow.text = "How old are you?"
        FDRDRIPtitleGlow.textColor = .white
        FDRDRIPtitleGlow.font = UIFont.systemFont(ofSize: max(24, FDRDRIPwidthAura * 0.088), weight: .bold)
        
        FDRDRIPsubtitleGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPsubtitleGlow.text = "Please provide your age in years"
        FDRDRIPsubtitleGlow.textColor = UIColor.white.withAlphaComponent(0.78)
        FDRDRIPsubtitleGlow.font = UIFont.systemFont(ofSize: max(15, FDRDRIPwidthAura * 0.046), weight: .regular)
        
        FDRDRIPpickerShell.translatesAutoresizingMaskIntoConstraints = false
        
        FDRDRIPyearPicker.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPyearPicker.delegate = self
        FDRDRIPyearPicker.dataSource = self
        FDRDRIPyearPicker.backgroundColor = .clear
        
        FDRDRIPfocusTopLine.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPfocusTopLine.backgroundColor = UIColor(red: 128/255, green: 63/255, blue: 1, alpha: 1)
        
        FDRDRIPfocusBottomLine.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPfocusBottomLine.backgroundColor = UIColor(red: 128/255, green: 63/255, blue: 1, alpha: 1)
        
        FDRDRIPcontinueAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPcontinueAura.setTitle("Continue", for: .normal)
        FDRDRIPcontinueAura.addTarget(self, action: #selector(FDRDRIPadvanceOrbit), for: .touchUpInside)
        
        view.addSubview(FDRDRIPbackGlow)
        view.addSubview(FDRDRIPtitleGlow)
        view.addSubview(FDRDRIPsubtitleGlow)
        view.addSubview(FDRDRIPpickerShell)
        view.addSubview(FDRDRIPcontinueAura)
        FDRDRIPpickerShell.addSubview(FDRDRIPyearPicker)
        FDRDRIPpickerShell.addSubview(FDRDRIPfocusTopLine)
        FDRDRIPpickerShell.addSubview(FDRDRIPfocusBottomLine)
        
        NSLayoutConstraint.activate([
            FDRDRIPbackGlow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.05),
            FDRDRIPbackGlow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: FDRDRIPheightAura * 0.01),
            FDRDRIPbackGlow.widthAnchor.constraint(equalToConstant: 28),
            FDRDRIPbackGlow.heightAnchor.constraint(equalToConstant: 28),
            FDRDRIPtitleGlow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.08),
            FDRDRIPtitleGlow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPtitleGlow.topAnchor.constraint(equalTo: FDRDRIPbackGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.052),
            FDRDRIPsubtitleGlow.leadingAnchor.constraint(equalTo: FDRDRIPtitleGlow.leadingAnchor),
            FDRDRIPsubtitleGlow.trailingAnchor.constraint(equalTo: FDRDRIPtitleGlow.trailingAnchor),
            FDRDRIPsubtitleGlow.topAnchor.constraint(equalTo: FDRDRIPtitleGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.012),
            FDRDRIPpickerShell.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPpickerShell.topAnchor.constraint(equalTo: FDRDRIPsubtitleGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.052),
            FDRDRIPpickerShell.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.54),
            FDRDRIPpickerShell.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.44),
            FDRDRIPyearPicker.leadingAnchor.constraint(equalTo: FDRDRIPpickerShell.leadingAnchor),
            FDRDRIPyearPicker.trailingAnchor.constraint(equalTo: FDRDRIPpickerShell.trailingAnchor),
            FDRDRIPyearPicker.topAnchor.constraint(equalTo: FDRDRIPpickerShell.topAnchor),
            FDRDRIPyearPicker.bottomAnchor.constraint(equalTo: FDRDRIPpickerShell.bottomAnchor),
            FDRDRIPfocusTopLine.centerXAnchor.constraint(equalTo: FDRDRIPpickerShell.centerXAnchor),
            FDRDRIPfocusTopLine.centerYAnchor.constraint(equalTo: FDRDRIPpickerShell.centerYAnchor, constant: -FDRDRIPtrailAura * 0.5),
            FDRDRIPfocusTopLine.widthAnchor.constraint(equalTo: FDRDRIPpickerShell.widthAnchor, multiplier: 0.72),
            FDRDRIPfocusTopLine.heightAnchor.constraint(equalToConstant: 3),
            FDRDRIPfocusBottomLine.centerXAnchor.constraint(equalTo: FDRDRIPpickerShell.centerXAnchor),
            FDRDRIPfocusBottomLine.centerYAnchor.constraint(equalTo: FDRDRIPpickerShell.centerYAnchor, constant: FDRDRIPtrailAura * 0.5),
            FDRDRIPfocusBottomLine.widthAnchor.constraint(equalTo: FDRDRIPfocusTopLine.widthAnchor),
            FDRDRIPfocusBottomLine.heightAnchor.constraint(equalTo: FDRDRIPfocusTopLine.heightAnchor),
            FDRDRIPcontinueAura.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPcontinueAura.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -FDRDRIPheightAura * 0.032),
            FDRDRIPcontinueAura.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.83),
            FDRDRIPcontinueAura.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.062)
        ])
        
        if let FDRDRIPseedGlow = FDRDRIPyearOrbitRack.firstIndex(of: FDRDRIPyearFocusGlow) {
            FDRDRIPyearPicker.selectRow(FDRDRIPseedGlow, inComponent: 0, animated: false)
        }
    }
    
    @objc private func FDRDRIPrewindOrbit() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func FDRDRIPadvanceOrbit() {
        FDRDRIPcontinueGlow(FDRDRIPyearFocusGlow)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        FDRDRIPyearOrbitRack.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        max(56, UIScreen.main.bounds.height * 0.058)
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        UIScreen.main.bounds.width * 0.42
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let FDRDRIPyearLabel = (view as? UILabel) ?? UILabel()
        let FDRDRIProwAura = FDRDRIPyearOrbitRack[row]
        let FDRDRIPcenterAura = pickerView.selectedRow(inComponent: component)
        let FDRDRIPdistanceAura = abs(FDRDRIPcenterAura - row)
        
        FDRDRIPyearLabel.textAlignment = .center
        FDRDRIPyearLabel.text = "\(FDRDRIProwAura)"
        
        switch FDRDRIPdistanceAura {
        case 0:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 56, weight: .heavy)
            FDRDRIPyearLabel.textColor = .white
            FDRDRIPyearLabel.alpha = 1
        case 1:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.5)
            FDRDRIPyearLabel.alpha = 0.92
        case 2:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.28)
            FDRDRIPyearLabel.alpha = 0.68
        default:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.14)
            FDRDRIPyearLabel.alpha = 0.4
        }
        
        return FDRDRIPyearLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        FDRDRIPyearFocusGlow = FDRDRIPyearOrbitRack[row]
        pickerView.reloadAllComponents()
    }
}

final class FDRDRIPFaceGleamController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate, AVCapturePhotoCaptureDelegate {
    
    private let FDRDRIPmailGlow: String
    private let FDRDRIPyearGlow: Int
    private let FDRDRIPfinishGlow: () -> Void
    
    private var FDRDRIPisScanningGlow = false
    private var FDRDRIPcameraConfiguredGlow = false
    private var FDRDRIPcameraReadyGlow = false
    private var FDRDRIPvisionBusyGlow = false
    private var FDRDRIPliveFaceReadyGlow = false
    private var FDRDRIPlastPulseStamp = CACurrentMediaTime()
    private lazy var FDRDRIPcaptureOrbit = AVCaptureSession()
    private lazy var FDRDRIPphotoOrbit = AVCapturePhotoOutput()
    private lazy var FDRDRIPframeOrbit = AVCaptureVideoDataOutput()
    private let FDRDRIPsessionOrbit = DispatchQueue(label: "FDRDRIP.face.session.orbit")
    private let FDRDRIPvisionOrbit = DispatchQueue(label: "FDRDRIP.face.vision.orbit")
    private var FDRDRIPpreviewOrbit: AVCaptureVideoPreviewLayer?
    private lazy var FDRDRIPnightRay = CAGradientLayer()
    private lazy var FDRDRIPbackAura = UIButton(type: .system)
    private lazy var FDRDRIPtitleAura = UILabel()
    private lazy var FDRDRIPcopyAura = UILabel()
    private lazy var FDRDRIPscanHalo = UIView()
    private lazy var FDRDRIPpreviewAura = UIImageView()
    private lazy var FDRDRIPscanTile = UIView()
    private lazy var FDRDRIPscanGlyph = UIImageView()
    private lazy var FDRDRIPconsentAura = UILabel()
    private lazy var FDRDRIPconsentGlyph = UIImageView()
    private lazy var FDRDRIPtakeAura = FDRDRIPNeonTrailButton()
    private lazy var FDRDRIPscanSpinner = UIActivityIndicatorView(style: .medium)
    private lazy var FDRDRIPresultAura = UILabel()
    
    init(FDRDRIPmailGlow: String, FDRDRIPyearGlow: Int, FDRDRIPfinishGlow: @escaping () -> Void) {
        self.FDRDRIPmailGlow = FDRDRIPmailGlow
        self.FDRDRIPyearGlow = FDRDRIPyearGlow
        self.FDRDRIPfinishGlow = FDRDRIPfinishGlow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        FDRDRIPrequestCameraOrbit()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        FDRDRIPpauseCameraOrbit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FDRDRIPbuildFaceAura()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        FDRDRIPnightRay.frame = view.bounds
        FDRDRIPscanHalo.layer.cornerRadius = FDRDRIPscanHalo.bounds.width * 0.5
        FDRDRIPscanTile.layer.cornerRadius = FDRDRIPscanTile.bounds.width * 0.22
        FDRDRIPpreviewAura.layer.cornerRadius = FDRDRIPscanHalo.bounds.width * 0.5
        FDRDRIPpreviewOrbit?.frame = FDRDRIPscanHalo.bounds
    }
    
    private func FDRDRIPbuildFaceAura() {
        view.backgroundColor = .black
        FDRDRIPnightRay.colors = [
            UIColor(red: 33/255, green: 62/255, blue: 120/255, alpha: 1).cgColor,
            UIColor(red: 22/255, green: 19/255, blue: 101/255, alpha: 1).cgColor,
            UIColor(red: 8/255, green: 7/255, blue: 67/255, alpha: 1).cgColor
        ]
        FDRDRIPnightRay.startPoint = CGPoint(x: 0, y: 0)
        FDRDRIPnightRay.endPoint = CGPoint(x: 0.78, y: 1)
        view.layer.insertSublayer(FDRDRIPnightRay, at: 0)
        
        let FDRDRIPwidthAura = UIScreen.main.bounds.width
        let FDRDRIPheightAura = UIScreen.main.bounds.height
        
        FDRDRIPbackAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPbackAura.tintColor = .white
        FDRDRIPbackAura.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        FDRDRIPbackAura.addTarget(self, action: #selector(FDRDRIPrewindFaceAura), for: .touchUpInside)
        
        FDRDRIPtitleAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPtitleAura.text = "Verify Your Identity"
        FDRDRIPtitleAura.textColor = .white
        FDRDRIPtitleAura.font = UIFont.systemFont(ofSize: max(24, FDRDRIPwidthAura * 0.084), weight: .bold)
        FDRDRIPtitleAura.numberOfLines = 0
        
        FDRDRIPcopyAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPcopyAura.text = "Take a clear selfie so we can verify your age. Your photo is securely stored and used solely for identity verification in accordance with our Privacy Policy."
        FDRDRIPcopyAura.textColor = UIColor.white.withAlphaComponent(0.82)
        FDRDRIPcopyAura.font = UIFont.systemFont(ofSize: max(15, FDRDRIPwidthAura * 0.043), weight: .regular)
        FDRDRIPcopyAura.numberOfLines = 0
        
        FDRDRIPscanHalo.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPscanHalo.layer.borderWidth = 2
        FDRDRIPscanHalo.layer.borderColor = UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1).cgColor
        FDRDRIPscanHalo.backgroundColor = UIColor(red: 92/255, green: 56/255, blue: 178/255, alpha: 0.18)
        FDRDRIPscanHalo.clipsToBounds = true
        
        FDRDRIPpreviewAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPpreviewAura.contentMode = .scaleAspectFill
        FDRDRIPpreviewAura.backgroundColor = .clear
        FDRDRIPpreviewAura.clipsToBounds = true
        
        FDRDRIPscanTile.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPscanTile.backgroundColor = UIColor(red: 115/255, green: 66/255, blue: 181/255, alpha: 0.42)
        
        FDRDRIPscanGlyph.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPscanGlyph.contentMode = .scaleAspectFit
        if #available(iOS 13.0, *) {
            FDRDRIPscanGlyph.image = UIImage(systemName: "person.crop.rectangle")?.withTintColor(UIColor(red: 136/255, green: 72/255, blue: 1, alpha: 1), renderingMode: .alwaysOriginal)
        }
        
        FDRDRIPresultAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPresultAura.textAlignment = .center
        FDRDRIPresultAura.textColor = UIColor.white.withAlphaComponent(0.86)
        FDRDRIPresultAura.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        FDRDRIPresultAura.numberOfLines = 2
        FDRDRIPresultAura.text = "Preparing your live camera..."
        
        FDRDRIPconsentGlyph.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 13.0, *) {
            FDRDRIPconsentGlyph.image = UIImage(systemName: "lock.fill")?.withTintColor(UIColor(red: 245/255, green: 191/255, blue: 68/255, alpha: 1), renderingMode: .alwaysOriginal)
        }
        
        FDRDRIPconsentAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPconsentAura.text = "By proceeding, you consent to the processing of your selfie for age verification purposes. Your photo will not be shared with third parties."
        FDRDRIPconsentAura.textColor = UIColor.white.withAlphaComponent(0.78)
        FDRDRIPconsentAura.font = UIFont.systemFont(ofSize: max(13, FDRDRIPwidthAura * 0.036), weight: .medium)
        FDRDRIPconsentAura.numberOfLines = 0
        
        FDRDRIPtakeAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPtakeAura.setTitle("Take a Selfie", for: .normal)
        FDRDRIPtakeAura.addTarget(self, action: #selector(FDRDRIPtakeFaceAura), for: .touchUpInside)
        
        FDRDRIPscanSpinner.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPscanSpinner.color = .white
        FDRDRIPscanSpinner.hidesWhenStopped = true
        
        view.addSubview(FDRDRIPbackAura)
        view.addSubview(FDRDRIPtitleAura)
        view.addSubview(FDRDRIPcopyAura)
        view.addSubview(FDRDRIPscanHalo)
        view.addSubview(FDRDRIPresultAura)
        view.addSubview(FDRDRIPconsentGlyph)
        view.addSubview(FDRDRIPconsentAura)
        view.addSubview(FDRDRIPtakeAura)
        FDRDRIPscanHalo.addSubview(FDRDRIPpreviewAura)
        FDRDRIPscanHalo.addSubview(FDRDRIPscanTile)
        FDRDRIPscanTile.addSubview(FDRDRIPscanGlyph)
        FDRDRIPtakeAura.addSubview(FDRDRIPscanSpinner)
        
        NSLayoutConstraint.activate([
            FDRDRIPbackAura.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.05),
            FDRDRIPbackAura.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: FDRDRIPheightAura * 0.01),
            FDRDRIPbackAura.widthAnchor.constraint(equalToConstant: 28),
            FDRDRIPbackAura.heightAnchor.constraint(equalToConstant: 28),
            FDRDRIPtitleAura.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.08),
            FDRDRIPtitleAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPtitleAura.topAnchor.constraint(equalTo: FDRDRIPbackAura.bottomAnchor, constant: FDRDRIPheightAura * 0.05),
            FDRDRIPcopyAura.leadingAnchor.constraint(equalTo: FDRDRIPtitleAura.leadingAnchor),
            FDRDRIPcopyAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPcopyAura.topAnchor.constraint(equalTo: FDRDRIPtitleAura.bottomAnchor, constant: FDRDRIPheightAura * 0.014),
            FDRDRIPscanHalo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPscanHalo.topAnchor.constraint(equalTo: FDRDRIPcopyAura.bottomAnchor, constant: FDRDRIPheightAura * 0.09),
            FDRDRIPscanHalo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.38),
            FDRDRIPscanHalo.heightAnchor.constraint(equalTo: FDRDRIPscanHalo.widthAnchor),
            FDRDRIPpreviewAura.leadingAnchor.constraint(equalTo: FDRDRIPscanHalo.leadingAnchor),
            FDRDRIPpreviewAura.trailingAnchor.constraint(equalTo: FDRDRIPscanHalo.trailingAnchor),
            FDRDRIPpreviewAura.topAnchor.constraint(equalTo: FDRDRIPscanHalo.topAnchor),
            FDRDRIPpreviewAura.bottomAnchor.constraint(equalTo: FDRDRIPscanHalo.bottomAnchor),
            FDRDRIPscanTile.centerXAnchor.constraint(equalTo: FDRDRIPscanHalo.centerXAnchor),
            FDRDRIPscanTile.centerYAnchor.constraint(equalTo: FDRDRIPscanHalo.centerYAnchor),
            FDRDRIPscanTile.widthAnchor.constraint(equalTo: FDRDRIPscanHalo.widthAnchor, multiplier: 0.36),
            FDRDRIPscanTile.heightAnchor.constraint(equalTo: FDRDRIPscanTile.widthAnchor),
            FDRDRIPscanGlyph.centerXAnchor.constraint(equalTo: FDRDRIPscanTile.centerXAnchor),
            FDRDRIPscanGlyph.centerYAnchor.constraint(equalTo: FDRDRIPscanTile.centerYAnchor),
            FDRDRIPscanGlyph.widthAnchor.constraint(equalTo: FDRDRIPscanTile.widthAnchor, multiplier: 0.54),
            FDRDRIPscanGlyph.heightAnchor.constraint(equalTo: FDRDRIPscanGlyph.widthAnchor),
            FDRDRIPresultAura.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.12),
            FDRDRIPresultAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPresultAura.topAnchor.constraint(equalTo: FDRDRIPscanHalo.bottomAnchor, constant: FDRDRIPheightAura * 0.028),
            FDRDRIPconsentGlyph.leadingAnchor.constraint(equalTo: FDRDRIPtitleAura.leadingAnchor),
            FDRDRIPconsentGlyph.topAnchor.constraint(equalTo: FDRDRIPresultAura.bottomAnchor, constant: FDRDRIPheightAura * 0.14),
            FDRDRIPconsentGlyph.widthAnchor.constraint(equalToConstant: 14),
            FDRDRIPconsentGlyph.heightAnchor.constraint(equalToConstant: 14),
            FDRDRIPconsentAura.leadingAnchor.constraint(equalTo: FDRDRIPconsentGlyph.trailingAnchor, constant: 6),
            FDRDRIPconsentAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPconsentAura.centerYAnchor.constraint(equalTo: FDRDRIPconsentGlyph.centerYAnchor, constant: 8),
            FDRDRIPtakeAura.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPtakeAura.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -FDRDRIPheightAura * 0.032),
            FDRDRIPtakeAura.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.83),
            FDRDRIPtakeAura.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.062),
            FDRDRIPscanSpinner.centerYAnchor.constraint(equalTo: FDRDRIPtakeAura.centerYAnchor),
            FDRDRIPscanSpinner.trailingAnchor.constraint(equalTo: FDRDRIPtakeAura.trailingAnchor, constant: -20)
        ])
    }
    
    @objc private func FDRDRIPrewindFaceAura() {
        FDRDRIPpauseCameraOrbit()
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func FDRDRIPtakeFaceAura() {
        guard FDRDRIPisScanningGlow == false else { return }
        guard FDRDRIPcameraReadyGlow else {
            FDRDRIPrequestCameraOrbit()
            return
        }
        guard FDRDRIPliveFaceReadyGlow else {
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Center one clear face inside the ring before capturing.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
            return
        }
        FDRDRIPcaptureFaceOrbit()
    }
    
    private func FDRDRIPrequestCameraOrbit() {
        let FDRDRIPorbitStatus = AVCaptureDevice.authorizationStatus(for: .video)
        switch FDRDRIPorbitStatus {
        case .authorized:
            FDRDRIPigniteCameraOrbit()
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async {
                    if granted {
                        self.FDRDRIPigniteCameraOrbit()
                    } else {
                        self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Camera access is required to verify your identity.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
                    }
                }
            }
        default:
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Camera access is required to verify your identity.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
        }
    }
    
    private func FDRDRIPigniteCameraOrbit() {
        FDRDRIPsessionOrbit.async {
            let FDRDRIPreadyGlow = self.FDRDRIPconfigureCameraOrbit()
            guard FDRDRIPreadyGlow else {
                DispatchQueue.main.async {
                    self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "A front camera is required for on-device face verification.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
                }
                return
            }
            
            if self.FDRDRIPcaptureOrbit.isRunning == false {
                self.FDRDRIPcaptureOrbit.startRunning()
            }
            
            DispatchQueue.main.async {
                self.FDRDRIPcameraReadyGlow = true
                self.FDRDRIPpreviewAura.image = nil
                self.FDRDRIPwirePreviewOrbit()
                self.FDRDRIPscanTile.isHidden = true
                self.FDRDRIPresultAura.text = "Position your face inside the ring."
                self.FDRDRIPresultAura.textColor = UIColor.white.withAlphaComponent(0.88)
                self.FDRDRIPscanHalo.layer.borderColor = UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1).cgColor
            }
        }
    }
    
    private func FDRDRIPpauseCameraOrbit() {
        FDRDRIPcameraReadyGlow = false
        FDRDRIPliveFaceReadyGlow = false
        FDRDRIPsessionOrbit.async {
            if self.FDRDRIPcaptureOrbit.isRunning {
                self.FDRDRIPcaptureOrbit.stopRunning()
            }
        }
    }
    
    private func FDRDRIPconfigureCameraOrbit() -> Bool {
        if FDRDRIPcameraConfiguredGlow {
            return true
        }
        
        guard let FDRDRIPfrontGlow = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front) else {
            return false
        }
        
        do {
            let FDRDRIPinputGlow = try AVCaptureDeviceInput(device: FDRDRIPfrontGlow)
            FDRDRIPcaptureOrbit.beginConfiguration()
            FDRDRIPcaptureOrbit.inputs.forEach { FDRDRIPcaptureOrbit.removeInput($0) }
            FDRDRIPcaptureOrbit.outputs.forEach { FDRDRIPcaptureOrbit.removeOutput($0) }
            FDRDRIPcaptureOrbit.sessionPreset = .photo
            
            guard FDRDRIPcaptureOrbit.canAddInput(FDRDRIPinputGlow) else {
                FDRDRIPcaptureOrbit.commitConfiguration()
                return false
            }
            FDRDRIPcaptureOrbit.addInput(FDRDRIPinputGlow)
            
            FDRDRIPframeOrbit.alwaysDiscardsLateVideoFrames = true
            FDRDRIPframeOrbit.videoSettings = [
                kCVPixelBufferPixelFormatTypeKey as String: Int(kCVPixelFormatType_32BGRA)
            ]
            
            guard FDRDRIPcaptureOrbit.canAddOutput(FDRDRIPframeOrbit),
                  FDRDRIPcaptureOrbit.canAddOutput(FDRDRIPphotoOrbit) else {
                FDRDRIPcaptureOrbit.commitConfiguration()
                return false
            }
            
            FDRDRIPcaptureOrbit.addOutput(FDRDRIPframeOrbit)
            FDRDRIPcaptureOrbit.addOutput(FDRDRIPphotoOrbit)
            FDRDRIPframeOrbit.setSampleBufferDelegate(self, queue: FDRDRIPvisionOrbit)
            
            if let FDRDRIPframeLink = FDRDRIPframeOrbit.connection(with: .video) {
                if FDRDRIPframeLink.isVideoOrientationSupported {
                    FDRDRIPframeLink.videoOrientation = .portrait
                }
                if FDRDRIPframeLink.isVideoMirroringSupported {
                    FDRDRIPframeLink.isVideoMirrored = true
                }
            }
            
            if let FDRDRIPphotoLink = FDRDRIPphotoOrbit.connection(with: .video) {
                if FDRDRIPphotoLink.isVideoOrientationSupported {
                    FDRDRIPphotoLink.videoOrientation = .portrait
                }
                if FDRDRIPphotoLink.isVideoMirroringSupported {
                    FDRDRIPphotoLink.isVideoMirrored = true
                }
            }
            
            FDRDRIPcaptureOrbit.commitConfiguration()
            FDRDRIPcameraConfiguredGlow = true
            return true
        } catch {
            return false
        }
    }
    
    private func FDRDRIPwirePreviewOrbit() {
        if FDRDRIPpreviewOrbit == nil {
            let FDRDRIPlayerGlow = AVCaptureVideoPreviewLayer(session: FDRDRIPcaptureOrbit)
            FDRDRIPlayerGlow.videoGravity = .resizeAspectFill
            if let FDRDRIPlinkGlow = FDRDRIPlayerGlow.connection {
                if FDRDRIPlinkGlow.isVideoOrientationSupported {
                    FDRDRIPlinkGlow.videoOrientation = .portrait
                }
                if FDRDRIPlinkGlow.isVideoMirroringSupported {
                    FDRDRIPlinkGlow.isVideoMirrored = true
                }
            }
            FDRDRIPscanHalo.layer.insertSublayer(FDRDRIPlayerGlow, at: 0)
            FDRDRIPpreviewOrbit = FDRDRIPlayerGlow
        }
        FDRDRIPpreviewOrbit?.frame = FDRDRIPscanHalo.bounds
    }
    
    private func FDRDRIPcaptureFaceOrbit() {
        FDRDRIPisScanningGlow = true
        FDRDRIPtakeAura.isUserInteractionEnabled = false
        FDRDRIPtakeAura.setTitle("Checking...", for: .normal)
        FDRDRIPscanSpinner.startAnimating()
        FDRDRIPresultAura.text = "Capturing selfie on device..."
        FDRDRIPresultAura.textColor = UIColor.white.withAlphaComponent(0.88)
        FDRDRIPscanHalo.layer.borderColor = UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1).cgColor
        
        FDRDRIPsessionOrbit.async {
            let FDRDRIPshotGlow: AVCapturePhotoSettings
            if self.FDRDRIPphotoOrbit.availablePhotoCodecTypes.contains(.jpeg) {
                FDRDRIPshotGlow = AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])
            } else {
                FDRDRIPshotGlow = AVCapturePhotoSettings()
            }
            if let FDRDRIPlinkGlow = self.FDRDRIPphotoOrbit.connection(with: .video) {
                if FDRDRIPlinkGlow.isVideoOrientationSupported {
                    FDRDRIPlinkGlow.videoOrientation = .portrait
                }
                if FDRDRIPlinkGlow.isVideoMirroringSupported {
                    FDRDRIPlinkGlow.isVideoMirrored = true
                }
            }
            self.FDRDRIPphotoOrbit.capturePhoto(with: FDRDRIPshotGlow, delegate: self)
        }
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard FDRDRIPisScanningGlow == false else { return }
        let FDRDRIPstampGlow = CACurrentMediaTime()
        guard FDRDRIPstampGlow - FDRDRIPlastPulseStamp > 0.24 else { return }
        guard FDRDRIPvisionBusyGlow == false else { return }
        guard let FDRDRIPpixelGlow = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        FDRDRIPlastPulseStamp = FDRDRIPstampGlow
        FDRDRIPvisionBusyGlow = true
        
        let FDRDRIPvisionGlow = VNDetectFaceRectanglesRequest()
        let FDRDRIPhandlerGlow = VNImageRequestHandler(cvPixelBuffer: FDRDRIPpixelGlow, orientation: .leftMirrored, options: [:])
        
        do {
            try FDRDRIPhandlerGlow.perform([FDRDRIPvisionGlow])
            let FDRDRIPfacesGlow = FDRDRIPvisionGlow.results ?? []
            DispatchQueue.main.async {
                self.FDRDRIPapplyLiveFaceOrbit(FDRDRIPfacesGlow: FDRDRIPfacesGlow)
            }
        } catch {
        }
        
        FDRDRIPvisionBusyGlow = false
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if error != nil {
            DispatchQueue.main.async {
                self.FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: true)
                self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Unable to capture your selfie. Please try again.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
            }
            return
        }
        
        guard let FDRDRIPdataGlow = photo.fileDataRepresentation(),
              let FDRDRIPimageGlow = UIImage(data: FDRDRIPdataGlow) else {
            DispatchQueue.main.async {
                self.FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: true)
                self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Unable to process your captured selfie.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
            }
            return
        }
        
        DispatchQueue.main.async {
            self.FDRDRIPpreviewAura.image = FDRDRIPimageGlow
        }
        FDRDRIPinspectFaceSignal(FDRDRIPimageGlow)
    }
    
    private func FDRDRIPinspectFaceSignal(_ FDRDRIPimageGlow: UIImage) {
        guard let FDRDRIPcgGlow = FDRDRIPimageGlow.cgImage else {
            DispatchQueue.main.async {
                self.FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: true)
                self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Unable to process the captured image.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
            }
            return
        }
        
        DispatchQueue.main.async {
            self.FDRDRIPresultAura.text = "Analyzing your selfie locally..."
            self.FDRDRIPresultAura.textColor = UIColor.white.withAlphaComponent(0.88)
            self.FDRDRIPscanHalo.layer.borderColor = UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1).cgColor
        }
        
        FDRDRIPvisionOrbit.async {
            let FDRDRIPvisionGlow = VNDetectFaceLandmarksRequest()
            let FDRDRIPhandlerGlow = VNImageRequestHandler(cgImage: FDRDRIPcgGlow, orientation: self.FDRDRIPvisionOrientation(FDRDRIPimageGlow: FDRDRIPimageGlow.imageOrientation), options: [:])
            do {
                try FDRDRIPhandlerGlow.perform([FDRDRIPvisionGlow])
                let FDRDRIPfaceGlow = FDRDRIPvisionGlow.results ?? []
                DispatchQueue.main.async {
                    self.FDRDRIPcompleteFaceSignal(FDRDRIPfacesGlow: FDRDRIPfaceGlow)
                }
            } catch {
                DispatchQueue.main.async {
                    self.FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: true)
                    self.FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Face detection failed. Please try again.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
                }
            }
        }
    }
    
    private func FDRDRIPcompleteFaceSignal(FDRDRIPfacesGlow: [VNFaceObservation]) {
        if let FDRDRIPprimaryGlow = FDRDRIPfacesGlow.first,
           FDRDRIPfacesGlow.count == 1,
           FDRDRIPprimaryGlow.boundingBox.width > 0.2,
           FDRDRIPprimaryGlow.boundingBox.height > 0.2,
           FDRDRIPprimaryGlow.landmarks?.leftEye != nil,
           FDRDRIPprimaryGlow.landmarks?.rightEye != nil,
           FDRDRIPprimaryGlow.landmarks?.nose != nil {
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Live face verified on device.", FDRDRIPcolorGlow: UIColor(red: 50/255, green: 238/255, blue: 178/255, alpha: 1))
            FDRDRIPpauseCameraOrbit()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                self.FDRDRIPscanSpinner.stopAnimating()
                self.FDRDRIPfinishGlow()
            }
        } else {
            FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: true)
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "One clear face is required. Please retake your selfie.", FDRDRIPcolorGlow: UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1))
        }
    }
    
    private func FDRDRIPapplyLiveFaceOrbit(FDRDRIPfacesGlow: [VNFaceObservation]) {
        guard FDRDRIPisScanningGlow == false else { return }
        
        if FDRDRIPfacesGlow.count > 1 {
            FDRDRIPliveFaceReadyGlow = false
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Only one face can appear in the frame.", FDRDRIPcolorGlow: UIColor(red: 1, green: 190/255, blue: 170/255, alpha: 1))
            return
        }
        
        guard let FDRDRIPfaceGlow = FDRDRIPfacesGlow.first else {
            FDRDRIPliveFaceReadyGlow = false
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Position your face inside the ring.", FDRDRIPcolorGlow: UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1))
            return
        }
        
        let FDRDRIPframeGlow = FDRDRIPfaceGlow.boundingBox
        let FDRDRIPmidXGlow = FDRDRIPframeGlow.midX
        let FDRDRIPmidYGlow = FDRDRIPframeGlow.midY
        let FDRDRIPreadyGlow =
        FDRDRIPframeGlow.width > 0.24 &&
        FDRDRIPframeGlow.height > 0.24 &&
        (0.28...0.72).contains(FDRDRIPmidXGlow) &&
        (0.3...0.8).contains(FDRDRIPmidYGlow)
        
        FDRDRIPliveFaceReadyGlow = FDRDRIPreadyGlow
        
        if FDRDRIPreadyGlow {
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Face aligned. Tap below to capture.", FDRDRIPcolorGlow: UIColor(red: 50/255, green: 238/255, blue: 178/255, alpha: 1))
        } else {
            FDRDRIPshowResultOrbit(FDRDRIPtextGlow: "Move closer and center your face inside the ring.", FDRDRIPcolorGlow: UIColor(red: 1, green: 190/255, blue: 170/255, alpha: 1))
        }
    }
    
    private func FDRDRIPresetFaceOrbit(FDRDRIPclearPreviewGlow: Bool) {
        FDRDRIPisScanningGlow = false
        FDRDRIPliveFaceReadyGlow = false
        FDRDRIPtakeAura.isUserInteractionEnabled = true
        FDRDRIPtakeAura.setTitle("Take a Selfie", for: .normal)
        FDRDRIPscanSpinner.stopAnimating()
        if FDRDRIPclearPreviewGlow {
            FDRDRIPpreviewAura.image = nil
        }
    }
    
    private func FDRDRIPshowResultOrbit(FDRDRIPtextGlow: String, FDRDRIPcolorGlow: UIColor) {
        FDRDRIPresultAura.text = FDRDRIPtextGlow
        FDRDRIPresultAura.textColor = FDRDRIPcolorGlow
        FDRDRIPscanHalo.layer.borderColor = FDRDRIPcolorGlow.cgColor
    }
    
    private func FDRDRIPvisionOrientation(FDRDRIPimageGlow: UIImage.Orientation) -> CGImagePropertyOrientation {
        switch FDRDRIPimageGlow {
        case .up: return .up
        case .down: return .down
        case .left: return .left
        case .right: return .right
        case .upMirrored: return .upMirrored
        case .downMirrored: return .downMirrored
        case .leftMirrored: return .leftMirrored
        case .rightMirrored: return .rightMirrored
        @unknown default: return .up
        }
    }
}

final class FDRDRIPNeonTrailButton: UIButton {
    
    private let FDRDRIPtrailGlow = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        FDRDRIPigniteTrail()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        FDRDRIPigniteTrail()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        FDRDRIPtrailGlow.frame = bounds
        layer.cornerRadius = bounds.height * 0.5
    }
    
    private func FDRDRIPigniteTrail() {
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        layer.masksToBounds = true
        FDRDRIPtrailGlow.colors = [
            UIColor(red: 161/255, green: 50/255, blue: 244/255, alpha: 1).cgColor,
            UIColor(red: 24/255, green: 234/255, blue: 219/255, alpha: 1).cgColor
        ]
        FDRDRIPtrailGlow.startPoint = CGPoint(x: 0, y: 0.5)
        FDRDRIPtrailGlow.endPoint = CGPoint(x: 1, y: 0.5)
        layer.insertSublayer(FDRDRIPtrailGlow, at: 0)
    }
}
