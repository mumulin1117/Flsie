//
//  FDRFlexActivyCell.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit

class FDRFlexActivyCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.init(white: 1, alpha: 0.8).cgColor
    }

}
