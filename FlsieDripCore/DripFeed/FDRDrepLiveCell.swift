//
//  FDRDrepLiveCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit

class FDRDrepLiveCell: UICollectionViewCell {
 
    
    @IBOutlet weak var odorControl: UIImageView!
    
    @IBOutlet weak var styleEvolution: UILabel!
    
   
    @IBOutlet weak var brandLoyaltyCount: UIButton!
    
    

    @IBOutlet weak var liveStaus: UIImageView!
    
    
    
    func colorOfTheYear()  {
         
        odorControl.layer.cornerRadius = 20
        odorControl.layer.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colorOfTheYear()
    }
    var logoMania:RequestModel?{
        didSet{
            styleEvolution.text = logoMania?.dicitonData["brandLoyalty"] as? String
            odorControl.configimagewithUrl(uilLinkd: logoMania?.dicitonData["logoMania"] as? String ?? "")
            
            let countNUm = logoMania?.dicitonData["cultureReference"] as? Int ?? 0
            
            brandLoyaltyCount.setTitle(" \(countNUm)", for: .normal)
//            liveStaus.isHidden = (logoMania?["streetCred"] as? Int == 0)
        }
    }
}
