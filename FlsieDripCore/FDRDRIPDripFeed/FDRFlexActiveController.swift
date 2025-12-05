//
//  FDRFlexActiveController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit

struct FDRDRIPRequestModel {
    var FDRDRIPdicitonData:Dictionary<String,Any>
    
}

class FDRFlexActiveController: FDRDRIPSuperPassController, UICollectionViewDelegate, UICollectionViewDataSource {
    var FDRDRIPdiscoverDataPage: Array<FDRDRIPRequestModel> = Array<FDRDRIPRequestModel>()
    
    private var FDRDRIPtrendCollection = [FDRDRIPTrendDrepContent]()
   
    var FDRDRIPActiveType:Int = 1{
        didSet{
            FDRDRIPFindDiscovermodelOffDuty()
        }
    }
    
    @IBOutlet weak var FDRDRIPtitl: UILabel!
    
    
    private lazy var FDRDRIPoutfitSuggestionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Your curated outfits will appear here"
        return label
        
    }()
    
    @IBOutlet weak var FDRDRIPrecycledPolyester: UICollectionView!
    
    
    private func FDRDRIPfabricInnovation()  {
        FDRDRIPtitl.text = "Akcetqimvciftiy".FDRDRIPFabricMAtClothSerial()
        FDRDRIPGarmentVisionScannerMain()
        FDRDRIPrecycledPolyester.register(UINib(nibName: "FDRFlexActivyCell", bundle: nil), forCellWithReuseIdentifier: "FDRFlexActivyCell")
       
        FDRDRIPrecycledPolyester.delegate = self
        
        FDRDRIPconfigureStyleInterface()
      
        FDRDRIPrecycledPolyester.contentInsetAdjustmentBehavior = .never
    }
    private var FDRDRIPdigitalGarments = [FDRDRIPStyleGarment]()
    
      
    
    func FDRDRIPGarmentVisionScannerMain()  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 45)/2, height: 250)
        FDRDRIPrecycledPolyester.collectionViewLayout = layout
        
    }
    private lazy var FDRDRIPgarmentScanner = FDRDRIPGarmentVisionScanner()
    override func viewDidLoad() {
        super.viewDidLoad()

        FDRDRIPfabricInnovation()
        
        FDRDRIPFindDiscovermodelOffDuty()
        FDRDRIPinsertopIndcatoer()
    }
    
    
    func FDRDRIPconfigureStyleInterface()  {
        FDRDRIPrecycledPolyester.dataSource = self
        FDRDRIPrecycledPolyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
    }

    @IBAction func FDRDRIPactivetypePick(_ sender: UIButton) {
        let action = FDRDRIPTrendDrepContent.init(styleDrepID: FDRViralChallenge_Controller.FDRDRIPappID, creator: "maximalistVibes", imageDrepURL: "maximalistVibes", likes: 3, isVerified: true
        )
        self.FDRDRIPtrendCollection.append(action)
        
        let actiType44 = self.view.viewWithTag(44) as? UIButton
        let actiType45 = self.view.viewWithTag(45) as? UIButton
       
        let actiType46 = self.view.viewWithTag(46) as? UIButton
        let actiType47 = self.view.viewWithTag(47) as? UIButton
        
        
        actiType44?.isSelected = false
       
        actiType45?.isSelected = false
        if self.FDRDRIPtrendCollection.first != nil {
            self.FDRDRIPtrendCollection.removeFirst()
        }
        actiType46?.isSelected = false
        actiType47?.isSelected = false
        
        sender.isSelected = true
        
        
        FDRDRIPActiveType = sender.tag - 43
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        FDRDRIPdiscoverDataPage.count
    }
    func FDRDRIPscanNewGarment(_ image: UIImage) {
        FDRDRIPgarmentScanner.FDRDRIPanalyzeFabricContent(image) { [weak self] result in
            switch result {
            case .success(let garment):
                self?.FDRDRIPdigitalGarments.append(garment)
                self?.FDRDRIPrefreshClosetDisplay()
               
                
            case .failure(let error):
                break
            }
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRFlexActivyCell", for: indexPath) as! FDRFlexActivyCell
        flsiecell.FDRDRIPlogoMania = FDRDRIPdiscoverDataPage[indexPath.row]
        flsiecell.FDRDRIPhotIconView.isHidden = (self.FDRDRIPActiveType != 1)
        return flsiecell
    }
    
    
    private func FDRDRIPrefreshClosetDisplay() {
          
        self.FDRDRIPrecycledPolyester.reloadData()
    }
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = FDRDRIPdiscoverDataPage[indexPath.row].FDRDRIPdicitonData["storytellingThroughFashion"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_FDRDRIPodorControl:"aucxtriwvpictsyjIndp=".FDRDRIPFabricMAtClothSerial() + "\(activeId)&", FDRDRIPpageString: .styleCommunityGuidelines, _FDRDRIPisDirrict: true), animated:true)
    }
    
    
    @IBAction func createActiveNew(_ sender: UIButton) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( FDRDRIPpageString: .hostTrendEvent, _FDRDRIPisDirrict: true), animated:true)
    }
    
    
    private func FDRDRIPconfigureStyleInterface(FDRDRIPhow:Bool) {
        if FDRDRIPhow {
            self.FDRDRIPspinnerView.startAnimating()
            return
        }
        self.FDRDRIPspinnerView.stopAnimating()
        
    }
  
    func FDRDRIPFindDiscovermodelOffDuty() {

        FDRDRIPconfigureStyleInterface(FDRDRIPhow: true)
        if FDRDRIPActiveType < 0 {
            return
        }
        FDRDRIPDiscverCell.FDRDRIPpersonalizationSetting(FDRDRIPbinStore: UIImage(named: "FDRDRIDDailyght"),                                              FDRDRIPmembersOnly: "/paoyniyucxz/nrknfshnlvcmiqq",                                              FDRDRIPvintage: [
            "contemporaryClassic": FDRViralChallenge_Controller.FDRDRIPappID

        ]) { [weak self] responsedata in
            guard let self = self else { return }
            self.FDRDRIPconfigureStyleInterface(FDRDRIPhow: false)
            let stringForNeed = "duaytna".FDRDRIPFabricMAtClothSerial()
            guard let Sellout = responsedata as? Dictionary<String,Any> ,
                  
                    let fullBodyFit = Sellout[stringForNeed] as? Array<Dictionary<String,Any>>
                  
                    
            else {
                
                SceneDelegate.FDRDRIPperformanceFabric(FDRDRIPalertMesg: "Nqoj qApcvteiyvgertjym kdgastfa".FDRDRIPFabricMAtClothSerial())
                return
            }
            let listDat = fullBodyFit.compactMap({ dic in
                FDRDRIPRequestModel.init(FDRDRIPdicitonData: dic)
            })
            if self.FDRDRIPActiveType == 1{
                self.FDRDRIPdiscoverDataPage = (listDat.count >= 5 ? Array(listDat[0..<5]) : listDat)
                
            }else if self.FDRDRIPActiveType == 2{
                self.FDRDRIPdiscoverDataPage = (listDat.count >= 4 ? Array(listDat.shuffled()[0..<4]) : listDat.shuffled())
                
            }else if self.FDRDRIPActiveType == 3{
                self.FDRDRIPdiscoverDataPage = (listDat.count >= 3 ? Array(listDat.shuffled()[0..<3]) : listDat.shuffled())
                
            }else if self.FDRDRIPActiveType == 4{
                self.FDRDRIPdiscoverDataPage = (listDat.count >= 2 ? Array(listDat.shuffled()[0..<2]) : listDat.shuffled())
                
            }
            
            self.FDRDRIPrefreshClosetDisplay()
        }                                              FDRDRIPavantGarde: { backedRrror in
            if self.FDRDRIPActiveType < 0 {
                return
            }
            self.FDRDRIPconfigureStyleInterface(FDRDRIPhow: false)
        }
    }
}
