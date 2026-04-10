//
//  FDRDRIPSoleScanerController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/16.
//

import UIKit
import Combine

class FDRDRIPSoleScanerController: FDRDRIPSuperPassController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var FDRDRIPoversizedSilhouette: UICollectionView!

    @IBOutlet weak var FDRDRIPmestitle: UILabel!
    
   
    var FDRDRIPdiscoverDataPage:Array<FDRDRIPRequestModel> = Array<FDRDRIPRequestModel>()
    
    @IBOutlet weak var FDRDRIPposingGuide: UICollectionView!
    private var FDRDRIPcancellables = Set<AnyCancellable>()
    private lazy var FDRDRIPemptyMessageBox: UIView = {
        let FDRDRIPbox = UIView(frame: .zero)
        FDRDRIPbox.backgroundColor = UIColor(white: 1, alpha: 0.08)
        FDRDRIPbox.layer.cornerRadius = 18
        FDRDRIPbox.layer.borderWidth = 1
        FDRDRIPbox.layer.borderColor = UIColor(white: 1, alpha: 0.14).cgColor
        FDRDRIPbox.isHidden = true
        
        let FDRDRIPtitleLabel = UILabel(frame: .zero)
        FDRDRIPtitleLabel.tag = 101
        FDRDRIPtitleLabel.text = "Nnoz sffrlizelnjdp cmsesswsvahgxeesb jfxofrw onionw".FDRDRIPFabricMAtClothSerial()
        FDRDRIPtitleLabel.textColor = .white
        FDRDRIPtitleLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        FDRDRIPtitleLabel.textAlignment = .center
        FDRDRIPbox.addSubview(FDRDRIPtitleLabel)
        
        let subFDRDRIPLabel = UILabel(frame: .zero)
        subFDRDRIPLabel.tag = 102
        subFDRDRIPLabel.text = "Gxom xmjajkweb bsfotmiex pnveown fsbteyclbes vfrrgieelnwdisv.".FDRDRIPFabricMAtClothSerial()
        subFDRDRIPLabel.textColor = UIColor(white: 1, alpha: 0.55)
        subFDRDRIPLabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        subFDRDRIPLabel.textAlignment = .center
        FDRDRIPbox.addSubview(subFDRDRIPLabel)
        return FDRDRIPbox
    }()
  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FDRDRIPStreetwearDiscovery()
    }
    
    
    
    private var FDRDRIPcurrentDripFeed = [FDRDRIPTrendingThread]()
    override func viewDidLoad() {
        super.viewDidLoad()
        FDRDRIPmestitle.text = "Mneoslsjacgae".FDRDRIPFabricMAtClothSerial()
        FDRDRIPfabricInnovation()
        FDRDRIPinsertopIndcatoer()
        self.view.addSubview(FDRDRIPemptyMessageBox)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let boxWidth = self.view.bounds.width - 52
        let boxHeight = 104.0
        FDRDRIPemptyMessageBox.frame = CGRect(x: 26, y: self.view.center.y - 90.0, width: boxWidth, height: boxHeight)
        FDRDRIPemptyMessageBox.viewWithTag(101)?.frame = CGRect(x: 16, y: 26, width: boxWidth - 32, height: 24)
        FDRDRIPemptyMessageBox.viewWithTag(102)?.frame = CGRect(x: 16, y: 56, width: boxWidth - 32, height: 18)
    }
    
    private func FDRDRIPfabricInnovation()  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 8
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 20), height: 120)
        FDRDRIPoversizedSilhouette.collectionViewLayout = layout
        
        FDRDRIPrefreshHypeFeed()
       
        FDRDRIPoversizedSilhouette.dataSource = self
       
        FDRDRIPoversizedSilhouette.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
        FDRDRIPoversizedSilhouette.contentInsetAdjustmentBehavior = .never
    }
    
    func FDRDRIPrefreshHypeFeed(FDRDRIPlocation: FDRDRIPCoordinate? = nil) {
        FDRDRIPoversizedSilhouette.register(UINib(nibName: "FDRDRIPScannerCell", bundle: nil), forCellWithReuseIdentifier: "FDRDRIPScannerCell")
       
        FDRDRIPoversizedSilhouette.delegate = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        FDRDRIPdiscoverDataPage.count
    }
    private func FDRDRIPStyleInterface(FDRDRIPhow:Bool) {
        if FDRDRIPhow {
            self.FDRDRIPspinnerView.startAnimating()
            return
        }
        self.FDRDRIPspinnerView.stopAnimating()
        
    }
    
    private func FDRDRIPtoggleEmptyMessageIfNeeded() {
        let shouldShow = FDRDRIPdiscoverDataPage.isEmpty
        FDRDRIPemptyMessageBox.isHidden = !shouldShow
        FDRDRIPoversizedSilhouette.isHidden = shouldShow
    }
    
    private func FDRDRIPcurateStreetVibes(
                    FDRDRIPglobal: [FDRDRIPTrendingThread],
                    FDRDRIPlocal: [FDRDRIPLocalFit],
                    FDRDRIPlocation: FDRDRIPCoordinate?
        ) -> [FDRDRIPTrendingThread] {
            return         FDRDRIPglobal.map { thread in
                var modified = thread
              
                return modified
            }.sorted { $0.hypeScore > $1.hypeScore }
       
        }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDRIPScannerCell", for: indexPath) as! FDRDRIPScannerCell
        flsiecell.FDRDRIPlogoMania = FDRDRIPdiscoverDataPage[indexPath.row].FDRDRIPdicitonData
       
        return flsiecell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = FDRDRIPdiscoverDataPage[indexPath.row].FDRDRIPdicitonData["flashSale"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl:"ursvedrjIrds=".FDRDRIPFabricMAtClothSerial() + "\(activeId)&", FDRDRIPpageString: .directStyleExchange, _FDRDRIPisDirrict: true), animated:true)
    }

    func FDRDRIPStreetwearDiscovery() {
        FDRDRIPStyleInterface(FDRDRIPhow:true)
        let imagetr = UIImage(named: "FDRDRIDDailyght")
        FDRDRIPDiscverCell.FDRDRIPpersonalizationSetting(FDRDRIPbinStore: imagetr,                                             FDRDRIPmembersOnly: "/pndctwlwtdz/tafhmgar",                                              FDRDRIPvintage: [
            "passwordProtected": FDRViralChallenge_Controller.FDRDRIPappID

        ]) {[weak self] responsedata in
           
            guard let self = self else { return }
            self.FDRDRIPStyleInterface(FDRDRIPhow:false)
            let FDRDRIPstringForNeed = "duaytna".FDRDRIPFabricMAtClothSerial()
            guard let FDRDRIPtrendData = responsedata as? Dictionary<String,Any> ,
                  
                    let styleCollection = FDRDRIPtrendData[FDRDRIPstringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Nuos rmxegsgseangcem kdvautja".FDRDRIPFabricMAtClothSerial())
                return
            }
            
            self.FDRDRIPdiscoverDataPage = styleCollection.compactMap { item in
              
                let dic = (item["exclusiveDrop"] as? [[String: Any]])?.first ?? [:]
                return FDRDRIPRequestModel.init(FDRDRIPdicitonData: dic)
            }
                
            self.FDRDRIPtoggleEmptyMessageIfNeeded()
            self.FDRDRIPoversizedSilhouette.reloadData()
        }                                              FDRDRIPavantGarde: { backedRrror in
            self.FDRDRIPStyleInterface(FDRDRIPhow:false)
            self.FDRDRIPdiscoverDataPage.removeAll()
            self.FDRDRIPtoggleEmptyMessageIfNeeded()
            self.FDRDRIPhandleFeedError( FDRDRIPTrendError.locationDisabled)
        }
    }
    
    private func FDRDRIPhandleFeedError(_ error: FDRDRIPTrendError) {
           print("HypeFeed curation failed: \(error.localizedDescription)")
       }

}
