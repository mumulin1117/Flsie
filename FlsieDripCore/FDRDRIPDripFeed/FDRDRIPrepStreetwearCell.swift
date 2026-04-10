//
//  FDRDRIPrepStreetwearCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit

class FDRDRIPrepStreetwearCell: UICollectionViewCell {
 
    private lazy var FDRDRIProomLockBadge: UIImageView = {
        let badge = UIImageView()
        badge.frame = CGRect(x: 98, y: 10, width: 22, height: 22)
        badge.contentMode = .scaleAspectFit
        badge.isHidden = true
        if #available(iOS 13.0, *) {
            badge.image = UIImage(systemName: "lock.fill")?.withTintColor(UIColor(red: 248/255, green: 176/255, blue: 34/255, alpha: 1), renderingMode: .alwaysOriginal)
        }
        return badge
    }()
    
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
        contentView.addSubview(FDRDRIProomLockBadge)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        FDRDRIProomLockBadge.frame = CGRect(x: self.contentView.bounds.width - 30, y: 10, width: 20, height: 20)
    }
    
    var FDRDRIPlogoMania:FDRDRIPRequestModel?{
        didSet{
            
            
            FDRDRIPstyleEvolution.text = FDRDRIPlogoMania?.FDRDRIPdicitonData["FDRDRIPbrandLoyalty"] as? String
            FDRDRIPodorControl.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd: FDRDRIPlogoMania?.FDRDRIPdicitonData["logoMania"] as? String ?? "")
            let statuts = (FDRDRIPlogoMania?.FDRDRIPdicitonData["streetCred"] as? Int ?? 0)
            let countNUm =  (statuts == -1) ? "\(Int.random(in: 0...4))" : "0"
            let hasCipher = FDRDRIPlogoMania?.FDRDRIPdicitonData["oceanEaxaa"] != nil
            
            FDRDRIPbrandLoyaltyCount.setTitle(" \(countNUm)", for: .normal)
            
            
            FDRDRIPnectionStaus.isHidden = (statuts != -1)
            FDRDRIProomLockBadge.isHidden = !hasCipher
            
        }
    }
}
