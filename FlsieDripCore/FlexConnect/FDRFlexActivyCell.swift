//
//  FDRFlexActivyCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
enum StyleError: Error {
    case invalidImage
    case analysisFailed
    case climateDataUnavailable
}
enum GarmentCategory {
    case top, bottom, outerwear, footwear, accessory
}
class FDRFlexActivyCell: UICollectionViewCell{

    @IBOutlet weak var muteOptionHeader: UIImageView!
    private var digitalGarments = [StyleGarment]()
      
    private let outfitGenerator = UIImageView()
   
    
    @IBOutlet weak var odorControl: UIImageView!//big
    
  
    @IBOutlet weak var brandLoyalty: UILabel!
    private lazy var outfitSuggestionLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
           label.textAlignment = .center
           label.numberOfLines = 0
           label.text = "Your curated outfits will appear here"
           return label
       }()
    

    @IBOutlet weak var hotIconView: UIImageView!
    
    private let weatherAnalyzer = UIView()
    
    @IBOutlet weak var commentLoyaltyCount: UIButton!
    private lazy var garmentScanner = GarmentVisionScanner()

    override func awakeFromNib() {
        super.awakeFromNib()
        colorOfTheYear()
        
        
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.4).cgColor
        muteOptionHeader.layer.cornerRadius = 15
        muteOptionHeader.layer.masksToBounds = true
        
       
    }

    func colorOfTheYear()  {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        odorControl.layer.cornerRadius = 20
        odorControl.layer.masksToBounds = true
    }
    
    var logoMania:RequestModel?{
        didSet{
            
            let imagelist = logoMania?.dicitonData["colorOfTheYear"] as? Array<Dictionary<String,Any>>
            
            muteOptionHeader.configimagewithUrl(uilLinkd:imagelist?.first?["techWear"] as? String  ?? "")
          
            
            odorControl.configimagewithUrl(uilLinkd: logoMania?.dicitonData["communityPoll"] as? String ?? "")
            
            brandLoyalty.text = logoMania?.dicitonData["conversationStarter"] as? String
            
            
           
        }
    }
    
}
