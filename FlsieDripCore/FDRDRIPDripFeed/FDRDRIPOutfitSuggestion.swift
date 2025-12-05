//
//  FDRDRIPStyleSuggester.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/19.
//

import UIKit

struct FDRDRIPGarment {
    let id: String
    let dripScore: Float
    let tags: [String]
    let scanDate: Date
}
struct FDRDRIPOutfitSuggestion {
    let items: [FDRDRIPGarment]
    let comboRating: Float
}
