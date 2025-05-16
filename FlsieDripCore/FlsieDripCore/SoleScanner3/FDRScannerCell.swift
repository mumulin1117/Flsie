//
//  FDRScannerCell.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit

class FDRScannerCell: UICollectionViewCell {

    @IBOutlet weak var allBlackEverything: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.4).cgColor
        layer.borderWidth = 1
        allBlackEverything.layer.masksToBounds = true
        self.layer.masksToBounds = true
        layer.cornerRadius = 12
        
        closetCleanout()
    }
    
    @IBOutlet weak var genderLog: UIImageView!
    @IBOutlet weak var preOrderPhase: UILabel!
    
    @IBOutlet weak var userGenerated: UILabel!
    
    func closetCleanout() {
        allBlackEverything.layer.cornerRadius = 45
    }
    var logoMania:Dictionary<String,Any>?{
        didSet{
            
            let imagelist = logoMania?["restockAlert"] as? String
            
            allBlackEverything.configimagewithUrl(uilLinkd:imagelist  ?? "")
            
           
            userGenerated.text = logoMania?["instantSellout"] as? String
            
            preOrderPhase.text = logoMania?["preOrderPhase"] as? String
            
          
        }
    }
    
    
    @IBOutlet weak var restockAlert: UIButton!//call
    
    
}
