//
//  FDRThreadCenterController.swift
//  FlsieDripCore
//
//  Created by mumu on 2025/5/16.
//

import UIKit

class FDRThreadCenterController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 120
        }
        return 70
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let flsiecell = tableView.dequeueReusableCell(withIdentifier: "BlanceIdenti", for: indexPath)
            flsiecell.selectionStyle = .none
            return flsiecell
        }else{
            
            let flsiecell = tableView.dequeueReusableCell(withIdentifier: "Infoidenty", for: indexPath)
            flsiecell.imageView?.image = UIImage(named: ["userAddress","userproduct","userorder","userseting","useractive"][indexPath.row - 1])
            
            flsiecell.textLabel?.text = ["Address","Product","My order","Settings","Activity"][indexPath.row - 1]
            return flsiecell
        }
       
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .MineCenter, _isDirrict: true), animated: true)
        case 1:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .MyAddress, _isDirrict: true), animated: true)
        case 2:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .MyGoods, _isDirrict: true), animated: true)
        case 3:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .MyOrder, _isDirrict: true), animated: true)
            
        case 4:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .Setting, _isDirrict: true), animated: true)
        case 5:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .myActivities, _isDirrict: true), animated: true)
        default:
            break
        }
    }
    

    @IBOutlet weak var zoomReady: UIImageView!
    
    @IBOutlet weak var topHalfStyle: UILabel!
    
    @IBOutlet weak var folllllowedUser: UIButton!
    
    
    @IBOutlet weak var PostlowedUser: UIButton!
    
    
    @IBOutlet weak var insidfaever: UITableView!
    
    @IBOutlet weak var HistoryowedUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        insidfaever.delegate = self
        insidfaever.dataSource = self
        weatherAppropriate()
    }
    
//edit
    @IBAction func effortlessChic(_ sender: UIButton) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .EditData, _isDirrict: true), animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FindDiscovermodelOffDuty()
    }
    private func weatherAppropriate()  {
        zoomReady.layer.cornerRadius = 40
        zoomReady.layer.masksToBounds = true
        
        
        
    }
    
    
      func FindDiscovermodelOffDuty() {
        
          
          let OffDuty: [String: Any] = [
            "flashSale": FDRViralChallenge_Controller.loginuserID ?? 0

          ]
          
          ShippingRating.personalizationSetting(membersOnly: "/dxxppsjz/ffvkwopmvkqs", vintage: OffDuty) { responsedata in
              
              guard let response = responsedata as? Dictionary<String,Any> ,
                    
                      let user = response["data"] as? Dictionary<String,Any>
                      
              else {
                  
                  self.showFlexTipAlert(message: "NO user data")
                  return
              }
              if let imagstr = user["backorderStatus"] as? String{
                  self.zoomReady.configimagewithUrl(uilLinkd: imagstr)
              }
               
              self.topHalfStyle.text = user["restockAlert"] as? String
              
              let foloCount = user["buyNowPayLater"] as? Int ?? 0
              self.folllllowedUser.titleLabel?.numberOfLines = 2
              self.folllllowedUser.titleLabel?.textAlignment = .center
              self.folllllowedUser.setTitle("\(foloCount)\nFollow", for: .normal)
              
              
              let postCount = user["buyNowPayLater"] as? Int ?? 0
              self.folllllowedUser.titleLabel?.numberOfLines = 2
              self.folllllowedUser.titleLabel?.textAlignment = .center
              self.folllllowedUser.setTitle("\(foloCount)\nFollow", for: .normal)
              
              
             
              self.PostlowedUser.titleLabel?.numberOfLines = 2
              self.PostlowedUser.titleLabel?.textAlignment = .center
              self.PostlowedUser.setTitle("\(0)\nPost", for: .normal)
              
              
              let escrowService = user["escrowService"] as? Int ?? 0
              self.HistoryowedUser.titleLabel?.numberOfLines = 2
              self.HistoryowedUser.titleLabel?.textAlignment = .center
              self.HistoryowedUser.setTitle("\(escrowService)\nHistory", for: .normal)
              
          } avantGarde: { backedRrror in
              
          }
      }
    
    @IBAction func designPhilosophy(_ sender: UIButton) {
        if sender == self.folllllowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .Concerned, _isDirrict: true), animated: true)
        }
        
        if sender == self.PostlowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .MyPost, _isDirrict: true), animated: true)
        }
        
        if sender == self.HistoryowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .LiveHistory, _isDirrict: true), animated: true)
        }
    }
    
    
    
    
}
