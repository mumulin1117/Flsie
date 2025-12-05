//
//  FDRDRIPScannerCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
struct FDRDRIPTrendingThread {
    let id: String
    let creator: String
    var hypeScore: Float
    let tags: Set<String>
    var baseScore: Float { hypeScore / 2 }
}

struct FDRDRIPLocalFit {
    let styleTags: Set<String>
    let location: FDRDRIPCoordinate
}

struct FDRDRIPCoordinate {
    let lat: Double
    let lng: Double
    func calculateProximityBoost() -> Float {
        // Simplified location-based boost
        return Float.random(in: 0.8...1.2)
    }
}
enum FDRDRIPTrendError: Error {
    case trendDecodeFailed(Error)
    case locationDisabled
}
class FDRDRIPScannerCell: UICollectionViewCell {

    @IBOutlet weak var FDRDRIPallBlackEverything: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.4).cgColor
        layer.borderWidth = 1
        FDRDRIPallBlackEverything.layer.masksToBounds = true
        self.layer.masksToBounds = true
        layer.cornerRadius = 12
        
        FDRDRIPclosetCleanout()
    }
    
    @IBOutlet weak var FDRDRIPgenderLog: UIImageView!
    @IBOutlet weak var FDRDRIPpreOrderPhase: UILabel!
    
    @IBOutlet weak var FDRDRIPuserGenerated: UILabel!
    
    func FDRDRIPclosetCleanout() {
        FDRDRIPallBlackEverything.layer.cornerRadius = 45
    }
    var FDRDRIPlogoMania:Dictionary<String,Any>?{
        didSet{
            
            let imagelist = FDRDRIPlogoMania?["restockAlert"] as? String
            
            FDRDRIPallBlackEverything.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd:imagelist  ?? "")
            
           
            FDRDRIPuserGenerated.text = FDRDRIPlogoMania?["instantSellout"] as? String
            
            FDRDRIPpreOrderPhase.text = FDRDRIPlogoMania?["preOrderPhase"] as? String
            
          
        }
    }
    
    
    @IBOutlet weak var restockAlert: UIButton!//call
    
    
}
