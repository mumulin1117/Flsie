//
//  FDRDripFeedController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit

class SuperPassController: UIViewController {
     lazy var spinnerView: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.color = UIColor.white
         spinner.hidesWhenStopped = true
        return spinner
    }()
    
    func insertopIndcatoer()  {
        spinnerView.frame = CGRect(origin: .zero, size: CGSize.init(width: 50, height: 50))
        self.view.addSubview(spinnerView)
        spinnerView.center = self.view.center
    }
}
struct TrendDrepContent {
    let styleDrepID: String
    let creator: String
    let imageDrepURL: String
    let likes: Int
    let isVerified: Bool
}
class FDRDripFeedController: SuperPassController, UICollectionViewDelegate,UICollectionViewDataSource, DidselctedFituser {
   
   
    var discoverDataPage: Array<RequestModel> = Array<RequestModel>()
  
    @IBOutlet weak var shareDrepButton: UIButton!
    
    var adjustableFeature: FDRDripFeedTopheader?
    

    @IBOutlet weak var forCreate: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        modelOffDuty()
        FindDiscovermodelOffDuty()
        insertopIndcatoer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStyleInterface()
        self.view.addSubview(self.recycledPolyester)

    }
    private var trendCollection = [TrendDrepContent]()
    private lazy var recycledPolyester: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 30, height: 260)
        layout.headerReferenceSize = CGSize.init(width: UIScreen.main.bounds.width - 15, height: 173 + 37)
        
        let mainf = (UIScreen.main.bounds.height > 700) ? 40.0 : 0.0
        
        let olyester = UICollectionView.init(frame:  CGRect.init(x: 0, y: shareDrepButton.frame.maxY + 20.0 + mainf, width: UIScreen.main.bounds.width, height: self.view.bounds.height - (shareDrepButton.frame.maxY  + 20.0 + mainf)), collectionViewLayout: layout)
        olyester.delegate = self
        olyester.register(UINib(nibName: "FDRDiscverCell", bundle: nil), forCellWithReuseIdentifier: "FDRDiscverCell")
        olyester.backgroundColor = .clear
        
        olyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom:100, right: 0)
        
        olyester.contentInsetAdjustmentBehavior = .never
        return olyester
    }()
    
    
    func configureStyleInterface()  {
        
        recycledPolyester.dataSource = self
        recycledPolyester.register(FDRDripFeedTopheader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader")
    }
    
    private let refreshController = UIRefreshControl()
    @IBAction func customPatch(_ sender: UIButton) {
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(pageString: .styleStudioCreation, _isDirrict: true), animated: true)
    }
    
    
    
    
    
    
    @IBAction func forCreateNew(_ sender: UIButton) {
        
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(pageString: .newStylePost, _isDirrict: true), animated: true)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader &&  indexPath.section == 0{
            let topheader = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader", for: indexPath) as! FDRDripFeedTopheader
            adjustableFeature  = topheader
            adjustableFeature?.delegate = self
            return topheader
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDiscverCell", for: indexPath) as! FDRDiscverCell
        flsiecell.logoMania = discoverDataPage[indexPath.row].dicitonData
        flsiecell.notify.addTarget(self, action: #selector(notifyUserpost), for: .touchUpInside)
        return flsiecell
    }
    
   @objc func notifyUserpost()  {
       self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .styleReport, _isDirrict: true), animated:true)
    }
    func selctenterlFit(fit: String,stauiins:Int) { //
        if stauiins == -1 {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: fit, pageString: .flaySaoin, _isDirrict: true), animated:true)
        }else{
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: fit, pageString: .styleBreak, _isDirrict: true), animated:true)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard  let dynamicId = discoverDataPage[indexPath.row].dicitonData["rawEdge"] as? Int else{return}
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "dnyknfaymziaczIsdr=".FabricMAtClothSerial() + "\(dynamicId)&", pageString: .stylePostDetails, _isDirrict: true), animated:true)
    }
    func modelOffDuty() {
        let action = TrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.appID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 3, isVerified: true
        )
        self.trendCollection.append(action)
        FDRDiscverCell.personalizationSetting(binStore: UIImage(named: "Dailyght"),membersOnly: "/ejyxqrlhnsjuujiz/nexnoij", vintage: [
            
            "neutralPalette": FDRViralChallenge_Controller.appID,

            "allBlackEverything": 16,

        ]) {[weak self] responsedata in
            
            guard let self = self else { return }
            let stringForNeed = "duaytna".FabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                if self.trendCollection.first != nil {
                    self.trendCollection.removeFirst()
                }
                SceneDelegate.performanceFabric(alertMesg: "Nkov nloiavbeb fdnaytfak sndopwnihntgh!".FabricMAtClothSerial())
                return
            }
            
            self.adjustableFeature?.nicheAestheticCa = fullBodyFit.compactMap({ dic in
                return RequestModel.init(dicitonData: dic)
            })
            
            
        } avantGarde: { backedRrror in
            if self.trendCollection.first != nil {
                self.trendCollection.removeFirst()
            }
        }
    }
    
    
    func FindDiscovermodelOffDuty() {
        let action = TrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.appID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 2, isVerified: true
        )
        let OffDuty: [String: Any] = [
            "maximalistVibes": FDRViralChallenge_Controller.appID,

            "oversizedSilhouette": 16,

        ]
        self.trendCollection.append(action)
        self.spinnerView.startAnimating()
        FDRDiscverCell.personalizationSetting(binStore: UIImage(named: "Dailyght"),membersOnly: "/zenfvpsvqz/yhvxgfsjfsrel", vintage: OffDuty) {[weak self] responsedata in
            guard let self = self else { return }
            self.spinnerView.stopAnimating()
            let stringForNeed = "duaytna".FabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                
                SceneDelegate.performanceFabric(alertMesg: "No Discover data")
                return
            }
            
            self.discoverDataPage = fullBodyFit.compactMap({ dic in
                RequestModel.init(dicitonData: dic)
            })
            self.recycledPolyester.reloadData()
        } avantGarde: { backedRrror in
            self.spinnerView.stopAnimating()
            if self.trendCollection.first != nil {
                self.trendCollection.removeFirst()
            }
            self.trendCollection.removeAll()
        }
    }
}


