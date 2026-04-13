//
//  FDRDRIPGarmentVisionScanner.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/19.
//

import UIKit
import Vision
struct FDRDRIPStyleGarment {
    let identifier: String
    let styleTags: [String]
    let garmentType: FDRDRIPGarmentCategory
    let previewImage: UIImage?
    var lastWornDate: Date?
}
class FDRDRIPGarmentVisionScanner {
    private  var FDRDRIPanalysisRequest: VNCoreMLRequest?
    
    func FDRDRIPanalyzeFabricContent(_ image: UIImage, FDRDRIPcompletion: @escaping (Result<FDRDRIPStyleGarment, Error>) -> Void) {
        guard let FDRDRIPcgImage = image.cgImage else {
            FDRDRIPcompletion(.failure(FDRDRIPStyleError.invalidImage))
            return
        }
        
        let FDRDRIPhandler = VNImageRequestHandler(cgImage: FDRDRIPcgImage)
        do {
            guard let ana = FDRDRIPanalysisRequest else {
                return
            }
            try FDRDRIPhandler.perform([ana])
            guard let results = ana.results as? [VNClassificationObservation],
                  let primaryResult = results.first else {
                FDRDRIPcompletion(.failure(FDRDRIPStyleError.analysisFailed))
                return
            }
            
            let garment = FDRDRIPStyleGarment(
                identifier: UUID().uuidString,
                styleTags: [primaryResult.identifier],
                garmentType: .top, // 简化为示例
                previewImage: image
            )
            FDRDRIPcompletion(.success(garment))
            
        } catch {
            FDRDRIPcompletion(.failure(error))
        }
    }
}

fileprivate final class FDRDRIPRunwayArchiveVault {
    static let FDRDRIPmemoCache = NSCache<NSString, NSString>()
    static let FDRDRIPdateFormatter: DateFormatter = {
        let FDRDRIPformatterGlow = DateFormatter()
        FDRDRIPformatterGlow.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return FDRDRIPformatterGlow
    }()
}

extension FDRDRIPGarmentVisionScanner {
    
    struct FDRDRIPLookbookMemo {
        let FDRDRIPheadlineGlow: String
        let FDRDRIPcaptionGlow: String
        let FDRDRIPstampGlow: String
    }
    
    struct FDRDRIPPaletteNote {
        let FDRDRIPtitleGlow: String
        let FDRDRIPtintGlow: UIColor
    }
    
    func FDRDRIPcurateLookbookMemo(FDRDRIPtagsGlow: [String], FDRDRIPdateGlow: Date = Date()) -> FDRDRIPLookbookMemo {
        let FDRDRIPfocusGlow = FDRDRIPtagsGlow.first ?? "Signature"
        let FDRDRIPcaptionGlow = FDRDRIPtagsGlow.prefix(3).joined(separator: " • ")
        let FDRDRIPstampGlow = FDRDRIPRunwayArchiveVault.FDRDRIPdateFormatter.string(from: FDRDRIPdateGlow)
        return FDRDRIPLookbookMemo(
            FDRDRIPheadlineGlow: "\(FDRDRIPfocusGlow) Lane",
            FDRDRIPcaptionGlow: FDRDRIPcaptionGlow.isEmpty ? "Curated style signal" : FDRDRIPcaptionGlow,
            FDRDRIPstampGlow: FDRDRIPstampGlow
        )
    }
    
    func FDRDRIPstoreLookbookMemo(FDRDRIPmemoGlow: FDRDRIPLookbookMemo, FDRDRIPkeyGlow: String) {
        let FDRDRIPvalueGlow = "\(FDRDRIPmemoGlow.FDRDRIPheadlineGlow)|\(FDRDRIPmemoGlow.FDRDRIPcaptionGlow)|\(FDRDRIPmemoGlow.FDRDRIPstampGlow)"
        FDRDRIPRunwayArchiveVault.FDRDRIPmemoCache.setObject(FDRDRIPvalueGlow as NSString, forKey: FDRDRIPkeyGlow as NSString)
    }
    
    func FDRDRIPrestoreLookbookMemo(FDRDRIPkeyGlow: String) -> String? {
        FDRDRIPRunwayArchiveVault.FDRDRIPmemoCache.object(forKey: FDRDRIPkeyGlow as NSString) as String?
    }
    
    func FDRDRIPpaletteMuseDeck() -> [FDRDRIPPaletteNote] {
        [
            FDRDRIPPaletteNote(FDRDRIPtitleGlow: "Night Teal", FDRDRIPtintGlow: UIColor(red: 0.15, green: 0.82, blue: 0.78, alpha: 1)),
            FDRDRIPPaletteNote(FDRDRIPtitleGlow: "Runway Violet", FDRDRIPtintGlow: UIColor(red: 0.47, green: 0.31, blue: 0.97, alpha: 1)),
            FDRDRIPPaletteNote(FDRDRIPtitleGlow: "Gloss Amber", FDRDRIPtintGlow: UIColor(red: 0.97, green: 0.73, blue: 0.29, alpha: 1))
        ]
    }
    
    func FDRDRIPbuildDormantLookChips(FDRDRIPtagsGlow: [String]) -> [UIView] {
        FDRDRIPtagsGlow.prefix(4).enumerated().map { FDRDRIPindexGlow, FDRDRIPtagGlow in
            let FDRDRIPchipAura = UIView(frame: CGRect(x: 0, y: 0, width: 112, height: 34))
            let FDRDRIPtintGlow = FDRDRIPpaletteMuseDeck()[FDRDRIPindexGlow % FDRDRIPpaletteMuseDeck().count].FDRDRIPtintGlow
            FDRDRIPchipAura.backgroundColor = FDRDRIPtintGlow.withAlphaComponent(0.14)
            FDRDRIPchipAura.layer.cornerRadius = 17
            FDRDRIPchipAura.alpha = 0
            FDRDRIPchipAura.isHidden = true
            
            let FDRDRIPlabelAura = UILabel(frame: CGRect(x: 14, y: 0, width: 84, height: 34))
            FDRDRIPlabelAura.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
            FDRDRIPlabelAura.textColor = .white
            FDRDRIPlabelAura.textAlignment = .center
            FDRDRIPlabelAura.text = FDRDRIPtagGlow
            FDRDRIPchipAura.addSubview(FDRDRIPlabelAura)
            return FDRDRIPchipAura
        }
    }
    
    func FDRDRIPcomposeDormantLookDigest(FDRDRIPtagsGlow: [String]) -> NSAttributedString {
        let FDRDRIPtitleGlow = NSMutableAttributedString(
            string: "Style digest\n",
            attributes: [
                .font: UIFont.systemFont(ofSize: 15, weight: .bold),
                .foregroundColor: UIColor.white
            ]
        )
        let FDRDRIPbodyGlow = FDRDRIPtagsGlow.isEmpty ? "No tags yet." : FDRDRIPtagsGlow.joined(separator: ", ")
        FDRDRIPtitleGlow.append(
            NSAttributedString(
                string: FDRDRIPbodyGlow,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 12, weight: .medium),
                    .foregroundColor: UIColor.white.withAlphaComponent(0.74)
                ]
            )
        )
        return FDRDRIPtitleGlow
    }
    
    func FDRDRIPbuildDormantLookCard(FDRDRIPmemoGlow: FDRDRIPLookbookMemo) -> UIView {
        let FDRDRIPcardAura = UIView(frame: CGRect(x: 0, y: 0, width: 232, height: 118))
        FDRDRIPcardAura.backgroundColor = UIColor.white.withAlphaComponent(0.05)
        FDRDRIPcardAura.layer.cornerRadius = 20
        FDRDRIPcardAura.layer.borderWidth = 1
        FDRDRIPcardAura.layer.borderColor = UIColor.white.withAlphaComponent(0.08).cgColor
        FDRDRIPcardAura.alpha = 0
        FDRDRIPcardAura.isHidden = true
        
        let FDRDRIPheadlineAura = UILabel(frame: CGRect(x: 16, y: 16, width: 200, height: 22))
        FDRDRIPheadlineAura.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        FDRDRIPheadlineAura.textColor = .white
        FDRDRIPheadlineAura.text = FDRDRIPmemoGlow.FDRDRIPheadlineGlow
        
        let FDRDRIPcaptionAura = UILabel(frame: CGRect(x: 16, y: 44, width: 200, height: 38))
        FDRDRIPcaptionAura.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        FDRDRIPcaptionAura.textColor = UIColor.white.withAlphaComponent(0.68)
        FDRDRIPcaptionAura.numberOfLines = 2
        FDRDRIPcaptionAura.text = FDRDRIPmemoGlow.FDRDRIPcaptionGlow
        
        let FDRDRIPstampAura = UILabel(frame: CGRect(x: 16, y: 88, width: 200, height: 14))
        FDRDRIPstampAura.font = UIFont.monospacedSystemFont(ofSize: 10, weight: .medium)
        FDRDRIPstampAura.textColor = UIColor.white.withAlphaComponent(0.44)
        FDRDRIPstampAura.text = FDRDRIPmemoGlow.FDRDRIPstampGlow
        
        FDRDRIPcardAura.addSubview(FDRDRIPheadlineAura)
        FDRDRIPcardAura.addSubview(FDRDRIPcaptionAura)
        FDRDRIPcardAura.addSubview(FDRDRIPstampAura)
        return FDRDRIPcardAura
    }
}

