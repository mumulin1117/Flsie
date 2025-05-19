//
//  FDRDripFeedTopheader.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit
protocol Didselctedliveuser {
    func selctenterlive(liveinID:String)
}
class FDRDripFeedTopheader: UICollectionReusableView, UICollectionViewDelegate,UICollectionViewDataSource {
    var delegate:Didselctedliveuser?
    

      var livePage:Array<RequestModel> = Array<RequestModel>(){
        didSet{
            recycledPolyester.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        livePage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let flsie = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDrepLiveCell", for: indexPath) as! FDRDrepLiveCell
        flsie.logoMania = livePage[indexPath.row]
        return flsie
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.delegate != nil, let liveidFashion = livePage[indexPath.row].dicitonData["boldPrint"] as? Int,let avatoruserID = livePage[indexPath.row].dicitonData["graphicTee"] as? Int {
            
           let passConnectID = "channel=\(liveidFashion)&userId=\(avatoruserID)&"
            self.delegate?.selctenterlive(liveinID: passConnectID)
        }
    }

    lazy var recycledPolyester: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize.init(width: 130, height: 170)
        layout.headerReferenceSize = CGSize.zero
        layout.scrollDirection = .horizontal
        let olyester = UICollectionView.init(frame: CGRect(x: 15, y: 0, width: UIScreen.main.bounds.width - 15, height: 170), collectionViewLayout: layout)
        olyester.register(UINib(nibName: "FDRDrepLiveCell", bundle: nil), forCellWithReuseIdentifier: "FDRDrepLiveCell")
        olyester.delegate = self
        olyester.dataSource = self
        olyester.backgroundColor = .clear
        
        return olyester
    }()
    
    lazy var discoverlabel: UILabel = {
        let disc = UILabel.init(frame: CGRect.init(x: 15, y: 170 + 10, width: 150, height: 30))
        disc.text = "Discover"
        disc.textColor = .white
        disc.font =  UIFont.systemFont(ofSize: 24, weight: .bold)
        return disc
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.addSubview(recycledPolyester)
        self.addSubview(discoverlabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
