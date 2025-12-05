//
//  FDRFlexActivyCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
enum FDRDRIPStyleError: Error {
    case invalidImage
    case analysisFailed
    case climateDataUnavailable
}
enum FDRDRIPGarmentCategory {
    case top, bottom, outerwear, footwear, accessory
}
class FDRFlexActivyCell: UICollectionViewCell{

    @IBOutlet weak var FDRDRIPmuteOptionHeader: UIImageView!
    private var FDRDRIPdigitalGarments = [FDRDRIPStyleGarment]()
      
    private let FDRDRIPoutfitGenerator = UIImageView()
   
    
    @IBOutlet weak var FDRDRIPodorControl: UIImageView!//big
    
  
    @IBOutlet weak var FDRDRIPbrandLoyalty: UILabel!
    private lazy var FDRDRIPoutfitSuggestionLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
           label.textAlignment = .center
           label.numberOfLines = 0
           label.text = "Your curated outfits will appear here"
           return label
       }()
    

    @IBOutlet weak var FDRDRIPhotIconView: UIImageView!
    
    private let FDRDRIPweatherAnalyzer = UIView()
    
    @IBOutlet weak var FDRDRIPcommentLoyaltyCount: UIButton!
    private lazy var FDRDRIPgarmentScanner = FDRDRIPGarmentVisionScanner()

    override func awakeFromNib() {
        super.awakeFromNib()
        FDRDRIPcolorOfTheYear()
        
        
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.4).cgColor
        FDRDRIPmuteOptionHeader.layer.cornerRadius = 15
        FDRDRIPmuteOptionHeader.layer.masksToBounds = true
        
       
    }

    func FDRDRIPcolorOfTheYear()  {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        FDRDRIPodorControl.layer.cornerRadius = 20
        FDRDRIPodorControl.layer.masksToBounds = true
    }
    
    var FDRDRIPlogoMania:FDRDRIPRequestModel?{
        didSet{
            
            let imagelist = FDRDRIPlogoMania?.FDRDRIPdicitonData["colorOfTheYear"] as? Array<Dictionary<String,Any>>
            
            FDRDRIPmuteOptionHeader.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd:imagelist?.first?["techWear"] as? String  ?? "")
          
            
            FDRDRIPodorControl.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd: FDRDRIPlogoMania?.FDRDRIPdicitonData["communityPoll"] as? String ?? "")
            
            FDRDRIPbrandLoyalty.text = FDRDRIPlogoMania?.FDRDRIPdicitonData["conversationStarter"] as? String
            
            
           
        }
    }
    
}
