//
//  StyleSuggester.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/19.
//

import UIKit

struct Garment {
    let id: String
    let dripScore: Float
    let tags: [String]
    let scanDate: Date
}
struct OutfitSuggestion {
    let items: [Garment]
    let comboRating: Float
}
