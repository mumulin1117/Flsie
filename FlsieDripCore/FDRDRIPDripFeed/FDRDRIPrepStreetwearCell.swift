//
//  FDRDRIPrepStreetwearCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit

class FDRDRIPrepStreetwearCell: UICollectionViewCell {
 
    
    @IBOutlet weak var FDRDRIPodorControl: UIImageView!
    
    @IBOutlet weak var FDRDRIPstyleEvolution: UILabel!
    
   
    @IBOutlet weak var FDRDRIPbrandLoyaltyCount: UIButton!
    
    

    @IBOutlet weak var FDRDRIPnectionStaus: UIImageView!
    
    
    
    func FDRDRIPcolorOfTheYear()  {
         
        FDRDRIPodorControl.layer.cornerRadius = 20
        FDRDRIPodorControl.layer.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FDRDRIPcolorOfTheYear()
    }
    var FDRDRIPlogoMania:FDRDRIPRequestModel?{
        didSet{
            
            
            FDRDRIPstyleEvolution.text = FDRDRIPlogoMania?.FDRDRIPdicitonData["FDRDRIPbrandLoyalty"] as? String
            FDRDRIPodorControl.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd: FDRDRIPlogoMania?.FDRDRIPdicitonData["logoMania"] as? String ?? "")
            let statuts = (FDRDRIPlogoMania?.FDRDRIPdicitonData["streetCred"] as? Int ?? 0)
            let countNUm =  (statuts == -1) ? "\(Int.random(in: 0...4))" : "0"
            
            FDRDRIPbrandLoyaltyCount.setTitle(" \(countNUm)", for: .normal)
            
            
            FDRDRIPnectionStaus.isHidden = (statuts != -1)
            
        }
    }
}
