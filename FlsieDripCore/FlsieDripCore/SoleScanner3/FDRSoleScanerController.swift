//
//  FDRSoleScanerController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/16.
//

import UIKit

class FDRSoleScanerController: SuperPassController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var chatFlsieView: UICollectionView!
    
    var discoverDataPage:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var posingGuide: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FindDiscovermodelOffDuty()
    }
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
        chatFlsieView.collectionViewLayout = layout
        
       
        chatFlsieView.register(UINib(nibName: "FDRScannerCell", bundle: nil), forCellWithReuseIdentifier: "FDRScannerCell")
       
        chatFlsieView.delegate = self
        chatFlsieView.dataSource = self
       
        chatFlsieView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
        chatFlsieView.contentInsetAdjustmentBehavior = .never
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRScannerCell", for: indexPath) as! FDRScannerCell
        flsiecell.logoMania = discoverDataPage[indexPath.row]
       
        return flsiecell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = discoverDataPage[indexPath.row]["flashSale"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:"userId=\(activeId)&", pageString: .privateChat, _isDirrict: true), animated:true)
    }

    func FindDiscovermodelOffDuty() {
      
        
        let OffDuty: [String: Any] = [
            "passwordProtected": FDRViralChallenge_Controller.appID

        ]
        
        ShippingRating.personalizationSetting(membersOnly: "/pndctwlwtdz/tafhmgar", vintage: OffDuty) { responsedata in
         
            guard let response = responsedata as? Dictionary<String,Any> ,
                  
                    let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showFlexTipAlert(message: "NO message data")
                return
            }
            
            self.discoverDataPage = user.map { dix in
                if let ONearrar = (dix["exclusiveDrop"] as? Array<[String:Any]>)?.first{
                    ONearrar
                }else{
                    [:]
                }
                
            }
            
            
            self.chatFlsieView.reloadData()
        } avantGarde: { backedRrror in
            
        }
    }

}
