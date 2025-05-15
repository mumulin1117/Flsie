//
//  FDRFlexActiveController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/15.
//

import UIKit

class FDRFlexActiveController: SuperPassController, UICollectionViewDelegate, UICollectionViewDataSource {
    var discoverDataPage: Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
   
    var ActiveType:Int = 1{
        didSet{
            FindDiscovermodelOffDuty()
        }
    }
    
    
    
    @IBOutlet weak var recycledPolyester: UICollectionView!
    
    
    private func fabricInnovation()  {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 45)/2, height: 250)
        recycledPolyester.collectionViewLayout = layout
        
       
        recycledPolyester.register(UINib(nibName: "FDRFlexActivyCell", bundle: nil), forCellWithReuseIdentifier: "FDRFlexActivyCell")
       
        recycledPolyester.delegate = self
        recycledPolyester.dataSource = self
       
        recycledPolyester.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 100, right: 0)
      
        recycledPolyester.contentInsetAdjustmentBehavior = .never
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        fabricInnovation()
        
        FindDiscovermodelOffDuty()
        insertopIndcatoer()
    }
    

    @IBAction func activetypePick(_ sender: UIButton) {
        
        
        let actiType44 = self.view.viewWithTag(44) as? UIButton
        let actiType45 = self.view.viewWithTag(45) as? UIButton
        let actiType46 = self.view.viewWithTag(46) as? UIButton
        let actiType47 = self.view.viewWithTag(47) as? UIButton
        
        actiType44?.isSelected = false
        actiType45?.isSelected = false
        actiType46?.isSelected = false
        actiType47?.isSelected = false
        
        sender.isSelected = true
        
        
        ActiveType = sender.tag - 43
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        discoverDataPage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsiecell = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRFlexActivyCell", for: indexPath) as! FDRFlexActivyCell
        flsiecell.logoMania = discoverDataPage[indexPath.row]
        flsiecell.hotIconView.isHidden = (self.ActiveType != 1)
        return flsiecell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let activeId = discoverDataPage[indexPath.row]["storytellingThroughFashion"] as? Int else{
            return
        }
        
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(_odorControl:"activityId=\(activeId)", pageString: .ActiveDetails), animated:true)
    }
    
    
    @IBAction func createActiveNew(_ sender: UIButton) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .CreateActive), animated:true)
    }
    
  
    func FindDiscovermodelOffDuty() {
      
        
        let OffDuty: [String: Any] = [
            "contemporaryClassic": "70449652"

        ]
        self.spinnerView.startAnimating()
        ShippingRating.personalizationSetting(membersOnly: "/paoyniyucxz/nrknfshnlvcmiqq", vintage: OffDuty) { responsedata in
            self.spinnerView.stopAnimating()
            guard let response = responsedata as? Dictionary<String,Any> ,
                  
                    let user = response["data"] as? Array<Dictionary<String,Any>>
                    
            else {
                
                self.showFlexTipAlert(message: "NO Activety data")
                return
            }
            if self.ActiveType == 1{
                self.discoverDataPage = (user.count >= 5 ? Array(user[0..<5]) : user)
                
            }else if self.ActiveType == 2{
                self.discoverDataPage = (user.count >= 4 ? Array(user.shuffled()[0..<4]) : user.shuffled())
                
            }else if self.ActiveType == 3{
                self.discoverDataPage = (user.count >= 3 ? Array(user.shuffled()[0..<3]) : user.shuffled())
                
            }else if self.ActiveType == 4{
                self.discoverDataPage = (user.count >= 2 ? Array(user.shuffled()[0..<2]) : user.shuffled())
                
            }
            
            self.recycledPolyester.reloadData()
        } avantGarde: { backedRrror in
            self.spinnerView.stopAnimating()
        }
    }
}
