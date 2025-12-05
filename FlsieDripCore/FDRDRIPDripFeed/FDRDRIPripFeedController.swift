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
  
    @IBOutlet weak var FDRDRIPshareDrepButton: UIButton!
    
    var FDRDRIPadjustableFeature: FDRDripFeedTopheader?
    

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
            
            self.FDRDRIPadjustableFeature?.FDRDRIPnicheAestheticCa = fullBodyFit.compactMap({ dic in
                return FDRDRIPRequestModel.init(FDRDRIPdicitonData: dic)
            })
            
            
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
                
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "No Discover data")
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
}


