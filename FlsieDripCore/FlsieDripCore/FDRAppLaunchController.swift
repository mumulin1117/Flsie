//
//  FDRAppLaunchController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/14.
//

import UIKit

class FDRAppLaunchController: UIViewController {
    lazy var storyLaungImageView: UIImageView = {
        let laungch = UIImageView(frame: UIScreen.main.bounds)
        laungch.image = UIImage(named: "fliselaunch")
        laungch.contentMode = .scaleAspectFill
        return laungch
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(storyLaungImageView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if FDRViralChallenge_Controller.loginuserToken == nil {
            self.navigationController?.pushViewController(FDRSSignINController.init(), animated: true)
        }else{
            let hats = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabbartControlID") as! UITabBarController
              
            self.navigationController?.pushViewController(hats, animated: false)
        }
        
    }
    

}
