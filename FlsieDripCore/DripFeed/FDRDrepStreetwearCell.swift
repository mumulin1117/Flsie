//
//  FDRDrepStreetwearCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit

class FDRDrepStreetwearCell: UICollectionViewCell {
 
    
    @IBOutlet weak var odorControl: UIImageView!
    
    @IBOutlet weak var styleEvolution: UILabel!
    
   
    @IBOutlet weak var brandLoyaltyCount: UIButton!
    
    

    @IBOutlet weak var nectionStaus: UIImageView!
    
    
    
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
            let statuts = (logoMania?.dicitonData["streetCred"] as? Int ?? 0)
            let countNUm =  (statuts == -1) ? "\(Int.random(in: 0...4))" : "0"
            
            brandLoyaltyCount.setTitle(" \(countNUm)", for: .normal)
            
            
            nectionStaus.isHidden = (statuts != -1)
            
        }
    }
}
