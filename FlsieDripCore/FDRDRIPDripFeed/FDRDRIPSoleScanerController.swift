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
                
           
            
            
            self.FDRDRIPoversizedSilhouette.reloadData()
        }                                              FDRDRIPavantGarde: { backedRrror in
            self.FDRDRIPStyleInterface(FDRDRIPhow:false)
            self.FDRDRIPhandleFeedError( FDRDRIPTrendError.locationDisabled)
        }
    }
    
    private func FDRDRIPhandleFeedError(_ error: FDRDRIPTrendError) {
           print("HypeFeed curation failed: \(error.localizedDescription)")
       }

}
