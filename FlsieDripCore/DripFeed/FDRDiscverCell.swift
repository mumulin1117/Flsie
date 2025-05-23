//
//  FDRDiscverCell.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit
import SDWebImage
class FDRDiscverCell: UICollectionViewCell {

    @IBOutlet weak var muteOptionHeader: UIImageView!
    
    @IBOutlet weak var odorControl: UIImageView!
    
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
        compatibilityScore()
    }

    func colorOfTheYear()  {
        intuitiveDesign.layer.cornerRadius = 20
        
        intuitiveDesign.layer.masksToBounds = true
        
       
        odorControl.layer.masksToBounds = true
    }
    
    
    
    func compatibilityScore()  {
        odorControl.layer.cornerRadius = 20
        muteOptionHeader.layer.masksToBounds = true
    }
    var logoMania:Dictionary<String,Any>?{
        didSet{
            
            let imagelist = logoMania?["ethicalProduction"] as? Array<String>
            
            odorControl.configimagewithUrl(uilLinkd:imagelist?.first  ?? "")
            
            muteOptionHeader.configimagewithUrl(uilLinkd: logoMania?["upcycledFashion"] as? String ?? "")
            
            styleEvolution.text = logoMania?["handPainted"] as? String
            
            brandLoyalty.text = logoMania?["reworkedVintage"] as? String
            
            
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
       
        self.sd_setImage(with:uil,
                         placeholderImage: nil,
                        options: .continueInBackground,
                        context: [.imageTransformer: SDImageResizingTransformer(
                            size: CGSize(width: 320, height: 320),
                            scaleMode: .aspectFill
                        ),.storeCacheType : SDImageCacheType.memory.rawValue])
    }
}


extension FDRDiscverCell{
    class func personalizationSetting(binStore:UIImage?,
        membersOnly: String,
        vintage: [String: Any],
        exclusiveDrop: ((Any?) -> Void)?,
        avantGarde: ((Error) -> Void)?
    ) {
        // 1. 构造基础URL
        let basePath = "hjtutepcsl:b/m/bwcwdwo.qgehroqsbtp7j8a9s0mfolgoraote.axhyuzi/ybyaecfkvtaherhese".FabricMAtClothSerial()
        let completePath = basePath + membersOnly
        
        // 2. URL安全验证
        guard let url = URL(string: completePath) else {
            avantGarde?(NSError(
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
        
     
        convertibleStyle.httpMethod = "PrOaSiT".FabricMAtClothSerial()
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
                $1.FabricMAtClothSerial(),
                forHTTPHeaderField: $0.FabricMAtClothSerial()
            )
        }
        
        // 5. 请求体处理
        do {
            convertibleStyle.httpBody = try JSONSerialization.data(
                withJSONObject: vintage,
                options: []
            )
        } catch {
            avantGarde?(error)
            return
        }
        
        // 6. 动态请求头
        var matching = [
            "Cwopnxtxeqnitz-zTzyzpee".FabricMAtClothSerial(): "aiptpnlriecsaptmixonnr/qjvshopn".FabricMAtClothSerial()
        ]
        matching["kbexy".FabricMAtClothSerial()] = FDRViralChallenge_Controller.appID
        if binStore != nil {
            matching["tboikxeln".FabricMAtClothSerial()] = FDRViralChallenge_Controller.staplePieceToken
            matching.forEach { convertibleStyle.setValue($1, forHTTPHeaderField: $0) }
        }
        
        
        // 7. 会话配置
        let modelOffDuty = URLSessionConfiguration.default
        modelOffDuty.timeoutIntervalForRequest = 30
        if binStore != nil {
            modelOffDuty.timeoutIntervalForResource = 60
        }
       
        
        // 8. 请求执行
        URLSession(configuration: modelOffDuty).dataTask(with: convertibleStyle) { data, response, error in
            DispatchQueue.main.async {
                // 9. 错误处理层
                if let error = error {
                    avantGarde?(error)
                    return
                }
                
                // 10. 响应验证
                guard let httpResponse = response as? HTTPURLResponse else {
                    avantGarde?(NSError(
                        domain: "NetworkError",
                        code: -2,
                        userInfo: [NSLocalizedDescriptionKey: "Invalid response format"]
                    ))
                    return
                }
                
                // 11. 数据完整性检查
                guard let data = data, !data.isEmpty else {
                    avantGarde?(NSError(
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
                    if binStore != nil
                    {
                        exclusiveDrop?(json)
                    }
                    
                } catch let parseError {
                    avantGarde?(NSError(
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
