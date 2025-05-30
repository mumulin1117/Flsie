//
//  FDRSoleScanerController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/16.
//

import UIKit
import Combine

class FDRSoleScanerController: SuperPassController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var oversizedSilhouette: UICollectionView!

      
   
    var discoverDataPage:Array<RequestModel> = Array<RequestModel>()
    
    @IBOutlet weak var posingGuide: UICollectionView!
    private var cancellables = Set<AnyCancellable>()
  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureStreetwearDiscovery()
    }
    private var currentDripFeed = [TrendingThread]()
    override func viewDidLoad() {
        super.viewDidLoad()
        fabricInnovation() 
        insertopIndcatoer()
    }
    private func fabricInnovation()  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 8
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 20), height: 120)
        oversizedSilhouette.collectionViewLayout = layout
        
        refreshHypeFeed()
       
        oversizedSilhouette.dataSource = self
       
        oversizedSilhouette.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
        oversizedSilhouette.contentInsetAdjustmentBehavior = .never
    }
    
    func refreshHypeFeed(location: Coordinate? = nil) {
        oversizedSilhouette.register(UINib(nibName: "FDRScannerCell", bundle: nil), forCellWithReuseIdentifier: "FDRScannerCell")
       
        oversizedSilhouette.delegate = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    private func configureStyleInterface(how:Bool) {
        if how {
            self.spinnerView.startAnimating()
            return
        }
        self.spinnerView.stopAnimating()
        
    }
    private func curateStreetVibes(
            global: [TrendingThread],
            local: [LocalFit],
            location: Coordinate?
        ) -> [TrendingThread] {
            return global.map { thread in
                var modified = thread
              
                return modified
            }.sorted { $0.hypeScore > $1.hypeScore }
       
        }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRScannerCell", for: indexPath) as! FDRScannerCell
        flsiecell.logoMania = discoverDataPage[indexPath.row].dicitonData
       
        return flsiecell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = discoverDataPage[indexPath.row].dicitonData["flashSale"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:"userId=\(activeId)&", pageString: .directStyleExchange, _isDirrict: true), animated:true)
    }

    func configureStreetwearDiscovery() {
        configureStyleInterface(how:true)
        let imagetr = UIImage(named: "Dailyght")
        FDRDiscverCell.personalizationSetting(binStore: imagetr,membersOnly: "/pndctwlwtdz/tafhmgar", vintage: [
            "passwordProtected": FDRViralChallenge_Controller.appID

        ]) {[weak self] responsedata in
           
            guard let self = self else { return }
            self.configureStyleInterface(how:false)
            let stringForNeed = "duaytna".FabricMAtClothSerial()
            guard let trendData = responsedata as? Dictionary<String,Any> ,
                  
                    let styleCollection = trendData[stringForNeed] as? Array<Dictionary<String,Any>>
                    
            else {
                
                SceneDelegate.performanceFabric(alertMesg: "Nuos rmxegsgseangcem kdvautja".FabricMAtClothSerial())
                return
            }
            
            self.discoverDataPage = styleCollection.compactMap { item in
              
                let dic = (item["exclusiveDrop"] as? [[String: Any]])?.first ?? [:]
                return RequestModel.init(dicitonData: dic)
            }
                
           
            
            
            self.oversizedSilhouette.reloadData()
        } avantGarde: { backedRrror in
            self.configureStyleInterface(how:false)
            self.handleFeedError( TrendError.locationDisabled)
        }
    }
    
    private func handleFeedError(_ error: TrendError) {
           print("HypeFeed curation failed: \(error.localizedDescription)")
       }

}
