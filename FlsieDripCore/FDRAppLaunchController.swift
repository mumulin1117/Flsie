//
//  FDRAppLaunchController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/14.
//

import UIKit

class FDRAppLaunchController: UIViewController {
    private lazy var storyLaungImageView: UIImageView = {
        let laungch = UIImageView(frame: UIScreen.main.bounds)
        laungch.image = UIImage(named: "fliselaunch")
        laungch.contentMode = .scaleAspectFill
        return laungch
    }()
    
    private lazy var outfitSuggestionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Your curated outfits will appear here"
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(outfitSuggestionLabel)
        outfitSuggestionLabel.textColor = .purple
        self.view.addSubview(storyLaungImageView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        outfitSuggestionLabel.text = "fliselaunch"
        if FDRViralChallenge_Controller.staplePieceToken == nil {
            outfitSuggestionLabel.textColor = .purple
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
        }else{
            makeOfflineSurfaceUI()
        }
        
    }
    
    func makeOfflineSurfaceUI()  {
        outfitSuggestionLabel.textColor = .purple
        let hats = UIStoryboard(name: "Mfakion".FabricMAtClothSerial(), bundle: nil).instantiateViewController(withIdentifier: "MainTabbartControlID") as! UITabBarController
        outfitSuggestionLabel.text = "MainTabbartControlID"
        self.navigationController?.pushViewController(hats, animated: false)
    }
    

}
