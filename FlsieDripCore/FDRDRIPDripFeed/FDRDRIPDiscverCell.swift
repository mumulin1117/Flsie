//
//  FDRDRIPDiscverCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
import SDWebImage
class FDRDRIPDiscverCell: UICollectionViewCell {

    @IBOutlet weak var FDRDRIPmuteOptionHeader: UIImageView!
    
    @IBOutlet weak var FDRDRIPodorControl: UIImageView!
    
    @IBOutlet weak var FDRDRIPstyleEvolution: UILabel!
    
    
    @IBOutlet weak var FDRDRIPbrandLoyalty: UILabel!
    
    
    @IBOutlet weak var FDRDRIPbrandLoyaltyCount: UIButton!
    
    
    @IBOutlet weak var FDRDRIPcommentLoyaltyCount: UIButton!
    
    @IBOutlet weak var FDRDRIPnotify: UIButton!
    
    
    @IBOutlet weak var FDRDRIPintuitiveDesign: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        FDRDRIPcolorOfTheYear()
        
        FDRDRIPmuteOptionHeader.layer.cornerRadius = 16
        FDRDRIPcompatibilityScore()
    }

    func FDRDRIPcolorOfTheYear()  {
        FDRDRIPintuitiveDesign.layer.cornerRadius = 20
        
        FDRDRIPintuitiveDesign.layer.masksToBounds = true
        
       
        FDRDRIPodorControl.layer.masksToBounds = true
    }
    
    
    
    func FDRDRIPcompatibilityScore()  {
        FDRDRIPodorControl.layer.cornerRadius = 20
        FDRDRIPmuteOptionHeader.layer.masksToBounds = true
    }
    var FDRDRIPlogoMania:Dictionary<String,Any>?{
        didSet{
            
            let FDRDRIPimagelist = FDRDRIPlogoMania?["ethicalProduction"] as? Array<String>
            
            FDRDRIPodorControl.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd:FDRDRIPimagelist?.first  ?? "")
            
            FDRDRIPmuteOptionHeader.FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd: FDRDRIPlogoMania?["upcycledFashion"] as? String ?? "")
            
            FDRDRIPstyleEvolution.text = FDRDRIPlogoMania?["FDRDRhandPainted"] as? String
            
            FDRDRIPbrandLoyalty.text = FDRDRIPlogoMania?["reworkedVintage"] as? String
            
            
            let sustainableFashion = FDRDRIPlogoMania?["sustainableFashion"] as? Int ?? 0
            
            FDRDRIPbrandLoyaltyCount.setTitle(" \(sustainableFashion)", for: .normal)
            
            
            let slowFashion = FDRDRIPlogoMania?["slowFashion"] as? Int ?? 0
            
            FDRDRIPcommentLoyaltyCount.setTitle(" \(slowFashion)", for: .normal)
           
        }
    }
    
}


extension UIImageView{
    func FDRDRIPconfigimagewithUrl(FDRDRIPuilLinkd:String)  {
        guard let uil = URL(string: FDRDRIPuilLinkd) else{
        
            return
        }
       
        self.sd_setImage(with:uil,
                         placeholderImage: nil,
                        options: .continueInBackground,
                        context: [.imageTransformer: SDImageResizingTransformer(
                            size: CGSize(width: 320, height: 320),
                            scaleMode: .aspectFill
                        ),.storeCacheType : SDImageCacheType.memory.rawValue])
    }
}


extension FDRDRIPDiscverCell{
    class func FDRDRIPpersonalizationSetting(FDRDRIPbinStore:UIImage?,
                                                     FDRDRIPmembersOnly: String,
                                                     FDRDRIPvintage: [String: Any],
                                                     FDRDRIPexclusiveDrop: ((Any?) -> Void)?,
                                                     FDRDRIPavantGarde: ((Error) -> Void)?
    ) {
        // 1. 构造基础URL
        let FDRDRIPbasePath = "hjtutepcsl:b/m/bwcwdwo.qgehroqsbtp7j8a9s0mfolgoraote.axhyuzi/ybyaecfkvtaherhese".FDRDRIPFabricMAtClothSerial()
        let completePath = FDRDRIPbasePath +                                              FDRDRIPmembersOnly
        
        // 2. URL安全验证
        guard let url = URL(string: completePath) else {
                                                         FDRDRIPavantGarde?(NSError(
                domain: "NetworkError",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "Invalid URL structure"]
            ))
            return
        }
        
        // 3. 请求配置
        var convertibleStyle = URLRequest(
            url: url,
            cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 30
        )
        
     
        convertibleStyle.httpMethod = "PrOaSiT".FDRDRIPFabricMAtClothSerial()
        let headerKeys = [
            "Crognztheanmtw-rTcyrphe",
            "Alchcoekpct",
            "Azcbcveypctn-tCyhgaarjsnest"
        ]
        let headerValues = [
            "anpqpllpipcjaltuilocnk/ijqseovn",
            "arpfpslviqclaxtcivosnv/kjtspogn",
            "cvhgapresmeptb=pUuTzFj-k8"
        ]
        zip(headerKeys, headerValues).forEach {
            convertibleStyle.setValue(
                $1.FDRDRIPFabricMAtClothSerial(),
                forHTTPHeaderField: $0.FDRDRIPFabricMAtClothSerial()
            )
        }
        
        // 5. 请求体处理
        do {
            convertibleStyle.httpBody = try JSONSerialization.data(
                withJSONObject:                                              FDRDRIPvintage,
                options: []
            )
        } catch {
                                                         FDRDRIPavantGarde?(error)
            return
        }
        
        // 6. 动态请求头
        var matching = [
            "Cwopnxtxeqnitz-zTzyzpee".FDRDRIPFabricMAtClothSerial(): "aiptpnlriecsaptmixonnr/qjvshopn".FDRDRIPFabricMAtClothSerial()
        ]
        matching["kbexy".FDRDRIPFabricMAtClothSerial()] = FDRViralChallenge_Controller.FDRDRIPappID
        if FDRDRIPbinStore != nil {
            matching["tboikxeln".FDRDRIPFabricMAtClothSerial()] = FDRViralChallenge_Controller.FDRDRIPstaplePieceToken
            matching.forEach { convertibleStyle.setValue($1, forHTTPHeaderField: $0) }
        }
        
        
        // 7. 会话配置
        let modelOffDuty = URLSessionConfiguration.default
        modelOffDuty.timeoutIntervalForRequest = 30
        if FDRDRIPbinStore != nil {
            modelOffDuty.timeoutIntervalForResource = 60
        }
       
        
        // 8. 请求执行
        URLSession(configuration: modelOffDuty).dataTask(with: convertibleStyle) { data, response, error in
            DispatchQueue.main.async {
                // 9. 错误处理层
                if let error = error {
                                                                 FDRDRIPavantGarde?(error)
                    return
                }
                
                // 10. 响应验证
                guard let httpResponse = response as? HTTPURLResponse else {
                                                                 FDRDRIPavantGarde?(NSError(
                        domain: "NetworkError",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "Invalid response format"]
                    ))
                    return
                }
                
                // 11. 数据完整性检查
                guard let data = data, !data.isEmpty else {
                                                                 FDRDRIPavantGarde?(NSError(
                        domain: "DataError",
                        code: -3,
                        userInfo: [NSLocalizedDescriptionKey: "Empty data"]
                    ))
                    return
                }
                
                // 12. 数据解析
                do {
                    let json = try JSONSerialization.jsonObject(
                        with: data,
                        options: [.mutableContainers, .allowFragments]
                    )
                    if FDRDRIPbinStore != nil
                    {
                                                                     FDRDRIPexclusiveDrop?(json)
                    }
                    
                } catch let parseError {
                                                                 FDRDRIPavantGarde?(NSError(
                        domain: "ParseError",
                        code: -4,
                        userInfo: [
                            NSLocalizedDescriptionKey: "Data parsing failed",
                            "rawData": String(data: data.prefix(100), encoding: .utf8) ?? "Binary data",
                            "underlyingError": parseError
                        ]
                    ))
                }
            }
        }.resume()
    }

}
