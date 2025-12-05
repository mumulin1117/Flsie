//
//  FDRDripFeedTopheader.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/15.
//

import UIKit
protocol FDRDRIPDidselctedFituser {
    func FDRDRIPselctenterlFit(FDRDRIPfit:String,FDRDRIPstauiins:Int)
}
class FDRDripFeedTopheader: UICollectionReusableView, UICollectionViewDelegate,UICollectionViewDataSource {
    var delegate:FDRDRIPDidselctedFituser?
    

      var FDRDRIPnicheAestheticCa:Array<FDRDRIPRequestModel> = Array<FDRDRIPRequestModel>(){
        didSet{
            FDRDRIPrecycledPolyester.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        FDRDRIPnicheAestheticCa.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let FDRDRIPflsie = collectionView.dequeueReusableCell(withReuseIdentifier: "FDRDRIPrepStreetwearCell", for: indexPath) as! FDRDRIPrepStreetwearCell
        FDRDRIPflsie.FDRDRIPlogoMania = FDRDRIPnicheAestheticCa[indexPath.row]
        return FDRDRIPflsie
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.delegate != nil, let idFashion = FDRDRIPnicheAestheticCa[indexPath.row].FDRDRIPdicitonData["boldPrint"] as? Int,let avatoruserID = FDRDRIPnicheAestheticCa[indexPath.row].FDRDRIPdicitonData["graphicTee"] as? Int {
            
            let streetCred = FDRDRIPnicheAestheticCa[indexPath.row].FDRDRIPdicitonData["streetCred"] as? Int ?? 0
            
            let graphicTee = FDRDRIPnicheAestheticCa[indexPath.row].FDRDRIPdicitonData["graphicTee"] as? Int ?? 0
            let passConnectID = "lxiqvyexIjdy=".FDRDRIPFabricMAtClothSerial()  + "\(idFashion)" + "&mursqeurnIudi=".FDRDRIPFabricMAtClothSerial() + "\(graphicTee)&"
            self.delegate?.FDRDRIPselctenterlFit(FDRDRIPfit: passConnectID, FDRDRIPstauiins: streetCred)
        }
    }

    lazy var FDRDRIPrecycledPolyester: UICollectionView = {
        
        let FDRDRIPlayout = UICollectionViewFlowLayout()
        FDRDRIPlayout.scrollDirection = .vertical
        FDRDRIPlayout.minimumLineSpacing = 12
        FDRDRIPlayout.minimumInteritemSpacing = 12
        FDRDRIPlayout.itemSize = CGSize.init(width: 130, height: 170)
        FDRDRIPlayout.headerReferenceSize = CGSize.zero
        FDRDRIPlayout.scrollDirection = .horizontal
        let FDRDRIPolyester = UICollectionView.init(frame: CGRect(x: 15, y: 0, width: UIScreen.main.bounds.width - 15, height: 170), collectionViewLayout: FDRDRIPlayout)
        FDRDRIPolyester.register(UINib(nibName: "FDRDRIPrepStreetwearCell", bundle: nil), forCellWithReuseIdentifier: "FDRDRIPrepStreetwearCell")
        FDRDRIPolyester.delegate = self
        FDRDRIPolyester.dataSource = self
        FDRDRIPolyester.backgroundColor = .clear
        
        return FDRDRIPolyester
    }()
    
    lazy var FDRDRIPdiscoverlabel: UILabel = {
        let disc = UILabel.init(frame: CGRect.init(x: 15, y: 170 + 10, width: 150, height: 30))
        disc.text = "Dgiasbcjovvjeyr".FDRDRIPFabricMAtClothSerial()
        disc.textColor = .white
        disc.font =  UIFont.systemFont(ofSize: 24, weight: .bold)
        return disc
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.addSubview(FDRDRIPrecycledPolyester)
        self.addSubview(FDRDRIPdiscoverlabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
}
