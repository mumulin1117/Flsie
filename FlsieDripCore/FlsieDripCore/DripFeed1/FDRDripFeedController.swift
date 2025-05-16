//
//  FDRDripFeedController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/15.
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

class FDRDripFeedController: SuperPassController, UICollectionViewDelegate,UICollectionViewDataSource, Didselctedliveuser {
   
    
    var discoverDataPage: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
  
    @IBOutlet weak var shareButton: UIButton!
    
    var liveHeader: FDRDripFeedTopheader?
    

    @IBOutlet weak var forCreate: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        modelOffDuty()
        FindDiscovermodelOffDuty()
        insertopIndcatoer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.addSubview(self.recycledPolyester)
//        self.recycledPolyester.frame = CGRect.init(x: 0, y: shareButton.frame.maxY + 20, width: UIScreen.main.bounds.width, height: self.view.bounds.height - (shareButton.frame.maxY  + 20))
    }
    
    private lazy var recycledPolyester: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 30, height: 260)
        layout.headerReferenceSize = CGSize.init(width: UIScreen.main.bounds.width - 15, height: 173 + 37)
        
        let olyester = UICollectionView.init(frame:  CGRect.init(x: 0, y: shareButton.frame.maxY + 20 + 50, width: UIScreen.main.bounds.width, height: self.view.bounds.height - (shareButton.frame.maxY  + 20 + 50)), collectionViewLayout: layout)
        olyester.register(UINib(nibName: "FDRDiscverCell", bundle: nil), forCellWithReuseIdentifier: "FDRDiscverCell")
        olyester.backgroundColor = .clear
        olyester.delegate = self
        olyester.dataSource = self
        olyester.register(FDRDripFeedTopheader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader")
        olyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom:100, right: 0)
      
        olyester.contentInsetAdjustmentBehavior = .never
        return olyester
    }()
    
    
    @IBAction func customPatch(_ sender: UIButton) {
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(pageString: .createroom, _isDirrict: true), animated: true)
    }
    
    
    
    
    
    
    @IBAction func forCreateNew(_ sender: UIButton) {
        
        self.navigationController?.pushViewController( FDRViralChallenge_Controller.init(pageString: .CreatePost, _isDirrict: true), animated: true)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader &&  indexPath.section == 0{
            let topheader = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FDRDripFeedTopheader", for: indexPath) as! FDRDripFeedTopheader
            liveHeader  = topheader
            liveHeader?.delegate = self
            return topheader
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDiscverCell", for: indexPath) as! FDRDiscverCell
        flsiecell.logoMania = discoverDataPage[indexPath.row]
        flsiecell.notify.addTarget(self, action: #selector(notifyUserpost), for: .touchUpInside)
        return flsiecell
    }
    
   @objc func notifyUserpost()  {
       self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .report, _isDirrict: true), animated:true)
    }
    func selctenterlive(liveinID: String) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: liveinID, pageString: .JoinLiveRoom, _isDirrict: true), animated:true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard  let dynamicId = discoverDataPage[indexPath.row]["rawEdge"] as? Int else{return}
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl: "dynamicId=\(dynamicId)&", pageString: .PostDetails, _isDirrict: true), animated:true)
    }
    func modelOffDuty() {///sj/live/selectLivePage
        let OffDuty: [String: Any] = [
            
            "neutralPalette": FDRViralChallenge_Controller.appID,//"bundleId"
//            "weatherAppropriate": 1,//"liveStatus"
            "allBlackEverything": 10,//"size"
//            "transitionalOutfit":1//"current"
        ]
  
        ShippingRating.personalizationSetting(membersOnly: "/ejyxqrlhnsjuujiz/nexnoij", vintage: OffDuty) { responsedata in
            guard let response = responsedata as? Dictionary<String,Any> ,
                  
                    let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showFlexTipAlert(message: "The email or password you entered is incorrect")
                return
            }
            
            self.liveHeader?.livePage = user
            
            
        } avantGarde: { backedRrror in
            
        }
    }
    
    
    func FindDiscovermodelOffDuty() {
        let OffDuty: [String: Any] = [
            "maximalistVibes": FDRViralChallenge_Controller.appID,//"bundleId"
//            "monochromeLook": 1,//"dynamicType"
            "oversizedSilhouette": 10,//"size"
//            "boxyFit":1,//"selectVersion"
//            "minimalistAesthetic":1,//selectType
//            "distressedDenim":1//"dynamicClassify"
        ]
        self.spinnerView.startAnimating()
        ShippingRating.personalizationSetting(membersOnly: "/zenfvpsvqz/yhvxgfsjfsrel", vintage: OffDuty) { responsedata in
            self.spinnerView.stopAnimating()
            guard let response = responsedata as? Dictionary<String,Any> ,
                  
                    let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showFlexTipAlert(message: "NO Discover data")
                return
            }
            
            self.discoverDataPage = user
            self.recycledPolyester.reloadData()
        } avantGarde: { backedRrror in
            self.spinnerView.stopAnimating()
        }
    }
}


