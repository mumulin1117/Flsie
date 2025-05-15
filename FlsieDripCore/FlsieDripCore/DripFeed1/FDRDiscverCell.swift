//
//  FDRDiscverCell.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit
import SDWebImage
class FDRDiscverCell: UICollectionViewCell {

    @IBOutlet weak var muteOptionHeader: UIImageView!
    
    @IBOutlet weak var odorControl: UIImageView!//big
    
    @IBOutlet weak var styleEvolution: UILabel!
    
    
    @IBOutlet weak var brandLoyalty: UILabel!
    
    
    @IBOutlet weak var brandLoyaltyCount: UIButton!
    
    
    @IBOutlet weak var commentLoyaltyCount: UIButton!
    
    @IBOutlet weak var notify: UIButton!
    
    
    @IBOutlet weak var intuitiveDesign: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colorOfTheYear()
        
        muteOptionHeader.layer.cornerRadius = 16
        muteOptionHeader.layer.masksToBounds = true
    }

    func colorOfTheYear()  {
        intuitiveDesign.layer.cornerRadius = 20
        intuitiveDesign.layer.masksToBounds = true
        
        odorControl.layer.cornerRadius = 20
        odorControl.layer.masksToBounds = true
    }
    
    var logoMania:Dictionary<String,Any>?{
        didSet{
            
            let imagelist = logoMania?["ethicalProduction"] as? Array<String>
            
            odorControl.configimagewithUrl(uilLinkd:imagelist?.first  ?? "")
            
            muteOptionHeader.configimagewithUrl(uilLinkd: logoMania?["upcycledFashion"] as? String ?? "")
            
            styleEvolution.text = logoMania?["handPainted"] as? String
            
            brandLoyalty.text = logoMania?["deconstructedStyle"] as? String
            
            
            let sustainableFashion = logoMania?["sustainableFashion"] as? Int ?? 0
            
            brandLoyaltyCount.setTitle(" \(sustainableFashion)", for: .normal)
            
            
            let slowFashion = logoMania?["slowFashion"] as? Int ?? 0
            
            commentLoyaltyCount.setTitle(" \(slowFashion)", for: .normal)
           
        }
    }
    
}


extension UIImageView{
    func configimagewithUrl(uilLinkd:String)  {
        guard let uil = URL(string: uilLinkd) else{
        
            return
        }
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )
        self.sd_setImage(with:uil,
                         placeholderImage: nil,
                        options: .continueInBackground,
                        context: [.imageTransformer: transformer,.storeCacheType : SDImageCacheType.memory.rawValue])
    }
}
