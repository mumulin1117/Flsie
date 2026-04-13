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


