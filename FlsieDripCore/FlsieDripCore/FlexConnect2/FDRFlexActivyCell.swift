//
//  FDRFlexActivyCell.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit

class FDRFlexActivyCell: UICollectionViewCell{

    @IBOutlet weak var muteOptionHeader: UIImageView!
    
    @IBOutlet weak var mutetwoeader: UIImageView!
    
    @IBOutlet weak var odorControl: UIImageView!//big
    
  
    @IBOutlet weak var brandLoyalty: UILabel!
    
    

    @IBOutlet weak var hotIconView: UIImageView!
    
    
    @IBOutlet weak var commentLoyaltyCount: UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        colorOfTheYear()
        
        
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.4).cgColor
        muteOptionHeader.layer.cornerRadius = 15
        muteOptionHeader.layer.masksToBounds = true
        
        
        mutetwoeader.layer.cornerRadius = 15
        mutetwoeader.layer.masksToBounds = true
    }

    func colorOfTheYear()  {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        odorControl.layer.cornerRadius = 20
        odorControl.layer.masksToBounds = true
    }
    
    var logoMania:Dictionary<String,Any>?{
        didSet{
            
            let imagelist = logoMania?["colorOfTheYear"] as? Array<String>
            
            muteOptionHeader.configimagewithUrl(uilLinkd:imagelist?.first  ?? "")
            mutetwoeader.configimagewithUrl(uilLinkd:imagelist?.last  ?? "")
            
            odorControl.configimagewithUrl(uilLinkd: logoMania?["communityPoll"] as? String ?? "")
            
            brandLoyalty.text = logoMania?["conversationStarter"] as? String
            
           
           
        }
    }
    
}
