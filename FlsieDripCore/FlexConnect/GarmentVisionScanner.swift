//
//  GarmentVisionScanner.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/19.
//

import UIKit
import Vision
struct StyleGarment {
    let identifier: String
    let styleTags: [String]
    let garmentType: GarmentCategory
    let previewImage: UIImage?
    var lastWornDate: Date?
}
class GarmentVisionScanner {
    private  var analysisRequest: VNCoreMLRequest?
    
    func analyzeFabricContent(_ image: UIImage, completion: @escaping (Result<StyleGarment, Error>) -> Void) {
        guard let cgImage = image.cgImage else {
            completion(.failure(StyleError.invalidImage))
            return
        }
        
        let handler = VNImageRequestHandler(cgImage: cgImage)
        do {
            guard let ana = analysisRequest else {
                return
            }
            try handler.perform([ana])
            guard let results = ana.results as? [VNClassificationObservation],
                  let primaryResult = results.first else {
                completion(.failure(StyleError.analysisFailed))
                return
            }
            
            let garment = StyleGarment(
                identifier: UUID().uuidString,
                styleTags: [primaryResult.identifier],
                garmentType: .top, // 简化为示例
                previewImage: image
            )
            completion(.success(garment))
            
        } catch {
            completion(.failure(error))
        }
    }
}


