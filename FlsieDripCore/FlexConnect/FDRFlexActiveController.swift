//
//  FDRFlexActiveController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit

struct RequestModel {
    var dicitonData:Dictionary<String,Any>
    
}

class FDRFlexActiveController: SuperPassController, UICollectionViewDelegate, UICollectionViewDataSource {
    var discoverDataPage: Array<RequestModel> = Array<RequestModel>()
    
    private var trendCollection = [TrendDrepContent]()
   
    var ActiveType:Int = 1{
        didSet{
            FindDiscovermodelOffDuty()
        }
    }
    
    private lazy var outfitSuggestionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Your curated outfits will appear here"
        return label
        
    }()
    
    @IBOutlet weak var recycledPolyester: UICollectionView!
    
    
    private func fabricInnovation()  {
       
        GarmentVisionScannerMain()
        recycledPolyester.register(UINib(nibName: "FDRFlexActivyCell", bundle: nil), forCellWithReuseIdentifier: "FDRFlexActivyCell")
       
        recycledPolyester.delegate = self
        
        configureStyleInterface()
      
        recycledPolyester.contentInsetAdjustmentBehavior = .never
    }
    private var digitalGarments = [StyleGarment]()
    
      
    
    func GarmentVisionScannerMain()  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 45)/2, height: 250)
        recycledPolyester.collectionViewLayout = layout
        
    }
    private lazy var garmentScanner = GarmentVisionScanner()
    override func viewDidLoad() {
        super.viewDidLoad()

        fabricInnovation()
        
        FindDiscovermodelOffDuty()
        insertopIndcatoer()
    }
    
    
    func configureStyleInterface()  {
        recycledPolyester.dataSource = self
        recycledPolyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
    }

    @IBAction func activetypePick(_ sender: UIButton) {
        let action = TrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.appID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 3, isVerified: true
        )
        self.trendCollection.append(action)
        
        let actiType44 = self.view.viewWithTag(44) as? UIButton
        let actiType45 = self.view.viewWithTag(45) as? UIButton
       
        let actiType46 = self.view.viewWithTag(46) as? UIButton
        let actiType47 = self.view.viewWithTag(47) as? UIButton
        
        
        actiType44?.isSelected = false
       
        actiType45?.isSelected = false
        if self.trendCollection.first != nil {
            self.trendCollection.removeFirst()
        }
        actiType46?.isSelected = false
        actiType47?.isSelected = false
        
        sender.isSelected = true
        
        
        ActiveType = sender.tag - 43
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    func scanNewGarment(_ image: UIImage) {
        garmentScanner.analyzeFabricContent(image) { [weak self] result in
            switch result {
            case .success(let garment):
                self?.digitalGarments.append(garment)
                self?.refreshClosetDisplay()
               
                
            case .failure(let error):
                break
            }
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRFlexActivyCell", for: indexPath) as! FDRFlexActivyCell
        flsiecell.logoMania = discoverDataPage[indexPath.row]
        flsiecell.hotIconView.isHidden = (self.ActiveType != 1)
        return flsiecell
    }
    
    
    private func refreshClosetDisplay() {
          
        self.recycledPolyester.reloadData()
    }
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = discoverDataPage[indexPath.row].dicitonData["storytellingThroughFashion"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:"aucxtriwvpictsyjIndp=".FabricMAtClothSerial() + "\(activeId)&", pageString: .styleCommunityGuidelines, _isDirrict: true), animated:true)
    }
    
    
    @IBAction func createActiveNew(_ sender: UIButton) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .hostTrendEvent, _isDirrict: true), animated:true)
    }
    
    
    private func configureStyleInterface(how:Bool) {
        if how {
            self.spinnerView.startAnimating()
            return
        }
        self.spinnerView.stopAnimating()
        
    }
  
    func FindDiscovermodelOffDuty() {

        configureStyleInterface(how: true)
        if ActiveType < 0 {
            return
        }
        FDRDiscverCell.personalizationSetting(binStore: UIImage(named: "Dailyght"), membersOnly: "/paoyniyucxz/nrknfshnlvcmiqq", vintage: [
            "contemporaryClassic": FDRViralChallenge_Controller.appID

        ]) { [weak self] responsedata in
            guard let self = self else { return }
            self.configureStyleInterface(how: false)
            let stringForNeed = "duaytna".FabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                  
                    
            else {
                
                SceneDelegate.performanceFabric(alertMesg: "No Activety data")
                return
            }
            let listDat = fullBodyFit.compactMap({ dic in
                RequestModel.init(dicitonData: dic)
            })
            if self.ActiveType == 1{
                self.discoverDataPage = (listDat.count >= 5 ? Array(listDat[0..<5]) : listDat)
                
            }else if self.ActiveType == 2{
                self.discoverDataPage = (listDat.count >= 4 ? Array(listDat.shuffled()[0..<4]) : listDat.shuffled())
                
            }else if self.ActiveType == 3{
                self.discoverDataPage = (listDat.count >= 3 ? Array(listDat.shuffled()[0..<3]) : listDat.shuffled())
                
            }else if self.ActiveType == 4{
                self.discoverDataPage = (listDat.count >= 2 ? Array(listDat.shuffled()[0..<2]) : listDat.shuffled())
                
            }
            
            self.refreshClosetDisplay()
        } avantGarde: { backedRrror in
            if self.ActiveType < 0 {
                return
            }
            self.configureStyleInterface(how: false)
        }
    }
}
