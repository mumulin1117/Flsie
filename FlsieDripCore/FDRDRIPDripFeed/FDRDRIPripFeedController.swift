//
//  FDRDRIPripFeedController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit

class FDRDRIPSuperPassController: UIViewController {
     lazy var FDRDRIPspinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
         spinner.hidesWhenStopped = true
        return spinner
    }()
    
    func FDRDRIPinsertopIndcatoer()  {
        FDRDRIPspinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
        self.view.addSubview(FDRDRIPspinnerView)
        FDRDRIPspinnerView.center = self.view.center
    }
}
struct FDRDRIPTrendDrepContent {
    let styleDrepID: String
    let creator: String
    let imageDrepURL: String
    let likes: Int
    let isVerified: Bool
}
class FDRDRIPripFeedController: FDRDRIPSuperPassController, UICollectionViewDelegate,UICollectionViewDataSource, FDRDRIPDidselctedFituser {
   
    @IBOutlet weak var FDRDRIPtitiel: UILabel!
    
    var FDRDRIPdiscoverDataPage: Array<FDRDRIPRequestModel> = Array<FDRDRIPRequestModel>()
    var FDRDRIPliveRoomData: Array<FDRDRIPRequestModel> = Array<FDRDRIPRequestModel>()
  
    @IBOutlet weak var FDRDRIPshareDrepButton: UIButton!
    
    var FDRDRIPadjustableFeature: FDRDripFeedTopheader?
    private var FDRDRIPpendingRoomRoute: String?
    private var FDRDRIPpendingRoomStatus: Int = 0
    private lazy var FDRDRIPcipherPanel: FDRDRIPRoomCipherPanel = {
        let panel = FDRDRIPRoomCipherPanel(frame: self.view.bounds)
        panel.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        panel.isHidden = true
        panel.alpha = 0
        panel.FDRDRIPonClose = { [weak self] in
            self?.FDRDRIPhideCipherPanel()
        }
        panel.FDRDRIPonConfirm = { [weak self] value in
            self?.FDRDRIPverifyRoomCipher(value)
        }
        return panel
    }()
    

    @IBOutlet weak var FDRDRIPforCreate: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FDRDRIPmodelOffDuty()
        FDRDRIPFindDiscovermodelOffDuty()
        FDRDRIPinsertopIndcatoer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        FDRDRIPtitiel.text =  "Fxlkspibe".FDRDRIPFabricMAtClothSerial()
        FDRDRIPconfigureStyleInterface()
        self.view.addSubview(self.FDRDRIPrecycledPolyester)
        self.view.addSubview(self.FDRDRIPcipherPanel)

    }
    private var FDRDRIPtrendCollection = [FDRDRIPTrendDrepContent]()
    private lazy var FDRDRIPrecycledPolyester: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 30, height: 260)
        layout.headerReferenceSize = CGSize.init(width: UIScreen.main.bounds.width - 15, height: 173 + 37)
        
        let mainf = (UIScreen.main.bounds.height > 700) ? 40.0 : 0.0
        
        let olyester = UICollectionView.init(frame:  CGRect.init(x: 0, y: FDRDRIPshareDrepButton.frame.maxY + 20.0 + mainf, width: UIScreen.main.bounds.width, height: self.view.bounds.height - (FDRDRIPshareDrepButton.frame.maxY  + 20.0 + mainf)), collectionViewLayout: layout)
        olyester.delegate = self
        olyester.register(UINib(nibName: "FDRDRIPDiscverCell", bundle: nil), forCellWithReuseIdentifier: "FDRDRIPDiscverCell")
        olyester.backgroundColor = .clear
        
        olyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom:100, right: 0)
        
        olyester.contentInsetAdjustmentBehavior = .never
        return olyester
    }()
    
    
    func FDRDRIPconfigureStyleInterface()  {
        
        FDRDRIPrecycledPolyester.dataSource = self
        FDRDRIPrecycledPolyester.register(FDRDripFeedTopheader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader")
    }
    
    private let FDRDRIPrefreshController = UIRefreshControl()
    @IBAction func FDRDRIPcustomPatch(_ sender: UIButton) {
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(FDRDRIPpageString: .styleStudioCreation, _FDRDRIPisDirrict: true), animated: true)
    }
    
    
    
    
    
    
    @IBAction func FDRDRIPforCreateNew(_ sender: UIButton) {
        
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(FDRDRIPpageString: .newStylePost, _FDRDRIPisDirrict: true), animated: true)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader &&  indexPath.section == 0{
            let topheader = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader", for: indexPath) as! FDRDripFeedTopheader
            FDRDRIPadjustableFeature  = topheader
            FDRDRIPadjustableFeature?.delegate = self
            return topheader
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        FDRDRIPdiscoverDataPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDRIPDiscverCell", for: indexPath) as! FDRDRIPDiscverCell
        flsiecell.FDRDRIPlogoMania = FDRDRIPdiscoverDataPage[indexPath.row].FDRDRIPdicitonData
        flsiecell.FDRDRIPnotify.addTarget(self, action: #selector(notifyUserpost), for: .touchUpInside)
        return flsiecell
    }
    
   @objc func notifyUserpost()  {
       self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( FDRDRIPpageString: .styleReport, _FDRDRIPisDirrict: true), animated:true)
    }
    func FDRDRIPselctenterlFit(FDRDRIPfit: String,FDRDRIPstauiins:Int) { //
        if let roomModel = FDRDRIPfindRoomModel(FDRDRIPfit), let roomCipher = FDRDRIProomCipherValue(roomModel), !roomCipher.isEmpty {
            FDRDRIPpendingRoomRoute = FDRDRIPfit
            FDRDRIPpendingRoomStatus = FDRDRIPstauiins
            FDRDRIPcipherPanel.FDRDRIPprepareForInput()
            FDRDRIPshowCipherPanel()
            return
        }
        if FDRDRIPstauiins == -1 {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: FDRDRIPfit, FDRDRIPpageString: .flaySaoin, _FDRDRIPisDirrict: true), animated:true)
        }else{
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: FDRDRIPfit, FDRDRIPpageString: .styleBreak, _FDRDRIPisDirrict: true), animated:true)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard  let dynamicId = FDRDRIPdiscoverDataPage[indexPath.row].FDRDRIPdicitonData["rawEdge"] as? Int else{return}
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: "dnyknfaymziaczIsdr=".FDRDRIPFabricMAtClothSerial() + "\(dynamicId)&", FDRDRIPpageString: .stylePostDetails, _FDRDRIPisDirrict: true), animated:true)
    }
    func FDRDRIPmodelOffDuty() {
        let action = FDRDRIPTrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.FDRDRIPappID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 3, isVerified: true
        )
        self.FDRDRIPtrendCollection.append(action)
        FDRDRIPDiscverCell.FDRDRIPpersonalizationSetting(FDRDRIPbinStore: UIImage(named: "FDRDRIDDailyght"),                                             FDRDRIPmembersOnly: "/ejyxqrlhnsjuujiz/nexnoij",                                              FDRDRIPvintage: [
            
            "neutralPalette": FDRViralChallenge_Controller.FDRDRIPappID,

            "allBlackEverything": 16,

        ]) {[weak self] responsedata in
            
            guard let self = self else { return }
            let stringForNeed = "duaytna".FDRDRIPFabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                if self.FDRDRIPtrendCollection.first != nil {
                    self.FDRDRIPtrendCollection.removeFirst()
                }
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Nkov nloiavbeb fdnaytfak sndopwnihntgh!".FDRDRIPFabricMAtClothSerial())
                return
            }
            
            self.FDRDRIPliveRoomData = fullBodyFit.compactMap({ dic in
                return FDRDRIPRequestModel.init(FDRDRIPdicitonData: dic)
            })
            self.FDRDRIPadjustableFeature?.FDRDRIPnicheAestheticCa = self.FDRDRIPliveRoomData
            
            
        }                                              FDRDRIPavantGarde: { backedRrror in
            if self.FDRDRIPtrendCollection.first != nil {
                self.FDRDRIPtrendCollection.removeFirst()
            }
        }
    }
    
    
    func FDRDRIPFindDiscovermodelOffDuty() {
        let action = FDRDRIPTrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.FDRDRIPappID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 2, isVerified: true
        )
        let OffDuty: [String: Any] = [
            "maximalistVibes": FDRViralChallenge_Controller.FDRDRIPappID,

            "oversizedSilhouette": 16,

        ]
        self.FDRDRIPtrendCollection.append(action)
        self.FDRDRIPspinnerView.startAnimating()
        FDRDRIPDiscverCell.FDRDRIPpersonalizationSetting(FDRDRIPbinStore: UIImage(named: "FDRDRIDDailyght"),                                             FDRDRIPmembersOnly: "/zenfvpsvqz/yhvxgfsjfsrel",                                              FDRDRIPvintage: OffDuty) {[weak self] responsedata in
            guard let self = self else { return }
            self.FDRDRIPspinnerView.stopAnimating()
            let stringForNeed = "duaytna".FDRDRIPFabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Ntos xDeiksscboavkezrt ndkactva".FDRDRIPFabricMAtClothSerial())
                return
            }
            
            self.FDRDRIPdiscoverDataPage = fullBodyFit.compactMap({ dic in
                FDRDRIPRequestModel.init(FDRDRIPdicitonData: dic)
            })
            self.FDRDRIPrecycledPolyester.reloadData()
        }                                              FDRDRIPavantGarde: { backedRrror in
            self.FDRDRIPspinnerView.stopAnimating()
            if self.FDRDRIPtrendCollection.first != nil {
                self.FDRDRIPtrendCollection.removeFirst()
            }
            self.FDRDRIPtrendCollection.removeAll()
        }
    }

    private func FDRDRIPfindRoomModel(_ FDRDRIPfit: String) -> FDRDRIPRequestModel? {
        return FDRDRIPliveRoomData.first(where: { model in
            guard let roomID = model.FDRDRIPdicitonData["boldPrint"] as? Int,
                  let userID = model.FDRDRIPdicitonData["graphicTee"] as? Int else {
                return false
            }
            let route = "lxiqvyexIjdy=".FDRDRIPFabricMAtClothSerial()  + "\(roomID)" + "&mursqeurnIudi=".FDRDRIPFabricMAtClothSerial() + "\(userID)&"
            return route == FDRDRIPfit
        })
    }
    
    private func FDRDRIProomCipherValue(_ model: FDRDRIPRequestModel) -> String? {
        print(model.FDRDRIPdicitonData)
        if let cipher = model.FDRDRIPdicitonData["oceanEaxaa"] as? String {
            let value = cipher.trimmingCharacters(in: .whitespacesAndNewlines)
            return value.isEmpty ? nil : value
        }
        
        if let cipher = model.FDRDRIPdicitonData["oceanEaxaa"] as? NSNumber {
            let value = cipher.stringValue.trimmingCharacters(in: .whitespacesAndNewlines)
            return value.isEmpty ? nil : value
        }
        
        return nil
    }
    
    private func FDRDRIPshowCipherPanel() {
        self.view.bringSubviewToFront(FDRDRIPcipherPanel)
        FDRDRIPcipherPanel.isHidden = false
        UIView.animate(withDuration: 0.25) {
            self.FDRDRIPcipherPanel.alpha = 1
        }
    }
    
    private func FDRDRIPhideCipherPanel() {
        self.view.endEditing(true)
        UIView.animate(withDuration: 0.2, animations: {
            self.FDRDRIPcipherPanel.alpha = 0
        }) { _ in
            self.FDRDRIPcipherPanel.isHidden = true
            self.FDRDRIPcipherPanel.FDRDRIPresetHint()
            self.FDRDRIPpendingRoomRoute = nil
            self.FDRDRIPpendingRoomStatus = 0
        }
    }
    
    private func FDRDRIPverifyRoomCipher(_ value: String) {
        guard let route = FDRDRIPpendingRoomRoute,
              let roomModel = FDRDRIPfindRoomModel(route),
              let roomCipher = FDRDRIProomCipherValue(roomModel) else {
            FDRDRIPhideCipherPanel()
            return
        }
        
        let inputCipher = value.trimmingCharacters(in: .whitespacesAndNewlines)
        if inputCipher == roomCipher {
            let roomStatus = FDRDRIPpendingRoomStatus
            FDRDRIPhideCipherPanel()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                if roomStatus == -1 {
                    self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: route, FDRDRIPpageString: .flaySaoin, _FDRDRIPisDirrict: true), animated:true)
                } else {
                    self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl: route, FDRDRIPpageString: .styleBreak, _FDRDRIPisDirrict: true), animated:true)
                }
            }
        } else {
            FDRDRIPcipherPanel.FDRDRIPshowErrorState()
        }
    }
}

final class FDRDRIPRoomCipherPanel: UIView {
    
    var FDRDRIPonClose: (() -> Void)?
    var FDRDRIPonConfirm: ((String) -> Void)?
    
    private let FDRDRIPmaskView = UIView()
    private let FDRDRIPcardView = UIView()
    private let FDRDRIPtitleLabel = UILabel()
    private let FDRDRIPcipherField = UITextField()
    private let FDRDRIPenterButton = UIButton(type: .system)
    private let FDRDRIPcloseButton = UIButton(type: .system)
    private let FDRDRIPhintLabel = UILabel()
    private let FDRDRIPlockWrap = UIView()
    private let FDRDRIPlockShackle = UIView()
    private let FDRDRIPlockBody = UIView()
    private let FDRDRIPlockCore = UIView()
    private let FDRDRIPenterLayer = CAGradientLayer()
    private let FDRDRIPcardLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        FDRDRIPbuildCipherPanel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        FDRDRIPlayoutCipherPanel()
        FDRDRIPcardLayer.frame = FDRDRIPcardView.bounds
        FDRDRIPenterLayer.frame = FDRDRIPenterButton.bounds
        FDRDRIPlockShackle.layer.cornerRadius = FDRDRIPlockShackle.bounds.width / 2
        FDRDRIPlockBody.layer.cornerRadius = 14
        FDRDRIPlockCore.layer.cornerRadius = FDRDRIPlockCore.bounds.width / 2
    }
    
    func FDRDRIPprepareForInput() {
        FDRDRIPresetHint()
        FDRDRIPcipherField.text = nil
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.FDRDRIPcipherField.becomeFirstResponder()
        }
    }
    
    func FDRDRIPresetHint() {
        FDRDRIPhintLabel.alpha = 0
        FDRDRIPhintLabel.text = nil
        FDRDRIPcipherField.layer.borderColor = UIColor.clear.cgColor
        FDRDRIPcipherField.layer.borderWidth = 0
    }
    
    func FDRDRIPshowErrorState() {
        FDRDRIPhintLabel.text = "Incorrect password"
        FDRDRIPhintLabel.textColor = UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 1)
        FDRDRIPhintLabel.alpha = 1
        FDRDRIPcipherField.layer.borderColor = UIColor(red: 1, green: 148/255, blue: 168/255, alpha: 0.75).cgColor
        FDRDRIPcipherField.layer.borderWidth = 1
        let origin = FDRDRIPcardView.transform
        UIView.animate(withDuration: 0.06, animations: {
            self.FDRDRIPcardView.transform = origin.translatedBy(x: -8, y: 0)
        }) { _ in
            UIView.animate(withDuration: 0.06, animations: {
                self.FDRDRIPcardView.transform = origin.translatedBy(x: 8, y: 0)
            }) { _ in
                UIView.animate(withDuration: 0.06) {
                    self.FDRDRIPcardView.transform = origin
                }
            }
        }
    }
    
    private func FDRDRIPbuildCipherPanel() {
        self.backgroundColor = .clear
        
        FDRDRIPmaskView.backgroundColor = UIColor.black.withAlphaComponent(0.52)
        FDRDRIPmaskView.frame = self.bounds
        FDRDRIPmaskView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(FDRDRIPmaskView)
        
        FDRDRIPcardView.backgroundColor = .clear
        FDRDRIPcardView.layer.cornerRadius = 28
        FDRDRIPcardView.layer.masksToBounds = true
        FDRDRIPcardLayer.colors = [
            UIColor(red: 46/255, green: 49/255, blue: 143/255, alpha: 1).cgColor,
            UIColor(red: 18/255, green: 9/255, blue: 83/255, alpha: 1).cgColor
        ]
        FDRDRIPcardLayer.startPoint = CGPoint(x: 0, y: 0)
        FDRDRIPcardLayer.endPoint = CGPoint(x: 1, y: 1)
        FDRDRIPcardView.layer.insertSublayer(FDRDRIPcardLayer, at: 0)
        self.addSubview(FDRDRIPcardView)
        
        FDRDRIPlockWrap.backgroundColor = .clear
        self.addSubview(FDRDRIPlockWrap)
        
        FDRDRIPlockShackle.backgroundColor = .clear
        FDRDRIPlockShackle.layer.borderWidth = 7
        FDRDRIPlockShackle.layer.borderColor = UIColor.white.cgColor
        FDRDRIPlockWrap.addSubview(FDRDRIPlockShackle)
        
        FDRDRIPlockBody.backgroundColor = UIColor(red: 248/255, green: 171/255, blue: 30/255, alpha: 1)
        FDRDRIPlockBody.layer.shadowColor = UIColor.black.withAlphaComponent(0.22).cgColor
        FDRDRIPlockBody.layer.shadowOffset = CGSize(width: 0, height: 6)
        FDRDRIPlockBody.layer.shadowOpacity = 1
        FDRDRIPlockBody.layer.shadowRadius = 10
        FDRDRIPlockWrap.addSubview(FDRDRIPlockBody)
        
        FDRDRIPlockCore.backgroundColor = UIColor(red: 228/255, green: 129/255, blue: 24/255, alpha: 1)
        FDRDRIPlockBody.addSubview(FDRDRIPlockCore)
        
        FDRDRIPtitleLabel.text = "Enter room password"
        FDRDRIPtitleLabel.textAlignment = .center
        FDRDRIPtitleLabel.textColor = .white
        FDRDRIPtitleLabel.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        FDRDRIPcardView.addSubview(FDRDRIPtitleLabel)
        
        FDRDRIPcipherField.backgroundColor = UIColor(red: 121/255, green: 113/255, blue: 186/255, alpha: 0.56)
        FDRDRIPcipherField.layer.cornerRadius = 21
        FDRDRIPcipherField.clipsToBounds = true
        FDRDRIPcipherField.textAlignment = .center
        FDRDRIPcipherField.textColor = .white
        FDRDRIPcipherField.tintColor = .white
        FDRDRIPcipherField.keyboardType = .asciiCapable
        FDRDRIPcipherField.attributedPlaceholder = NSAttributedString(string: "Enter room password", attributes: [
            .foregroundColor: UIColor.white.withAlphaComponent(0.55),
            .font: UIFont.systemFont(ofSize: 18, weight: .semibold)
        ])
        FDRDRIPcardView.addSubview(FDRDRIPcipherField)
        
        FDRDRIPhintLabel.textAlignment = .center
        FDRDRIPhintLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        FDRDRIPhintLabel.alpha = 0
        FDRDRIPcardView.addSubview(FDRDRIPhintLabel)
        
        FDRDRIPenterButton.setTitle("Enter", for: .normal)
        FDRDRIPenterButton.setTitleColor(.white, for: .normal)
        FDRDRIPenterButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        FDRDRIPenterButton.layer.cornerRadius = 23
        FDRDRIPenterButton.layer.masksToBounds = true
        FDRDRIPenterLayer.colors = [
            UIColor(red: 159/255, green: 42/255, blue: 247/255, alpha: 1).cgColor,
            UIColor(red: 25/255, green: 244/255, blue: 214/255, alpha: 1).cgColor
        ]
        FDRDRIPenterLayer.startPoint = CGPoint(x: 0, y: 0.5)
        FDRDRIPenterLayer.endPoint = CGPoint(x: 1, y: 0.5)
        FDRDRIPenterButton.layer.insertSublayer(FDRDRIPenterLayer, at: 0)
        FDRDRIPenterButton.addTarget(self, action: #selector(FDRDRIPconfirmInput), for: .touchUpInside)
        FDRDRIPcardView.addSubview(FDRDRIPenterButton)
        
        FDRDRIPcloseButton.backgroundColor = UIColor.white
        FDRDRIPcloseButton.layer.cornerRadius = 20
        FDRDRIPcloseButton.tintColor = UIColor(red: 34/255, green: 38/255, blue: 52/255, alpha: 1)
        FDRDRIPcloseButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        FDRDRIPcloseButton.addTarget(self, action: #selector(FDRDRIPtapClose), for: .touchUpInside)
        self.addSubview(FDRDRIPcloseButton)
    }
    
    @objc private func FDRDRIPtapClose() {
        FDRDRIPonClose?()
    }
    
    @objc private func FDRDRIPconfirmInput() {
        let value = FDRDRIPcipherField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        guard !value.isEmpty else {
            FDRDRIPshowErrorState()
            return
        }
        FDRDRIPonConfirm?(value)
    }
    
    private func FDRDRIPlayoutCipherPanel() {
        let screenWidth = self.bounds.width
        let cardWidth = screenWidth - 38
        let cardHeight = 254.0
        FDRDRIPcardView.frame = CGRect(x: 19, y: (self.bounds.height - cardHeight) * 0.48, width: cardWidth, height: cardHeight)
        FDRDRIPlockWrap.frame = CGRect(x: (self.bounds.width - 82) * 0.5, y: FDRDRIPcardView.frame.minY - 80, width: 82, height: 96)
        FDRDRIPlockShackle.frame = CGRect(x: 14, y: 0, width: 54, height: 58)
        FDRDRIPlockBody.frame = CGRect(x: 10, y: 42, width: 62, height: 52)
        FDRDRIPlockCore.frame = CGRect(x: 25, y: 18, width: 12, height: 16)
        FDRDRIPtitleLabel.frame = CGRect(x: 18, y: 60, width: cardWidth - 36, height: 30)
        FDRDRIPcipherField.frame = CGRect(x: 28, y: 118, width: cardWidth - 56, height: 44)
        FDRDRIPhintLabel.frame = CGRect(x: 22, y: 165, width: cardWidth - 44, height: 18)
        FDRDRIPenterButton.frame = CGRect(x: 28, y: 188, width: cardWidth - 56, height: 46)
        FDRDRIPcloseButton.frame = CGRect(x: (self.bounds.width - 40) * 0.5, y: FDRDRIPcardView.frame.maxY + 18, width: 40, height: 40)
    }
}
