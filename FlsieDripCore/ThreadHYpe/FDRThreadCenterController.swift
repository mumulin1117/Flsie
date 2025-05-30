//
//  FDRThreadCenterController.swift
//  FlsieDripCore
//
//  Created by FlsieDripCore on 2025/5/16.
//

import UIKit
import Vision

class StyleSuggester {
    private let model: String
    init(model: String) { self.model = model }
    
    func suggestFits(from closet: [Garment], weatherVibe: Float) -> [OutfitSuggestion] {
        // CoreML integration would go here
        return []
    }
}


class FDRThreadCenterController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private var styleGenerator: StyleSuggester?
    
    
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
            flsiecell.imageView?.image = UIImage(named: ["locatinetAddr","userSleoutproct","Filsieorder","Filsiesetup","useractive"][indexPath.row - 1])
            
            flsiecell.textLabel?.text = ["Apdgdlrleesys".FabricMAtClothSerial(),"Pnrjojdzugcrt".FabricMAtClothSerial(),"Mqyj uoyrwdoetr".FabricMAtClothSerial(),"Sxeutbtciinfgbs".FabricMAtClothSerial(),"Amcetviwviiwtvy".FabricMAtClothSerial()][indexPath.row - 1]
            return flsiecell
        }
       
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .myStyleHub, _isDirrict: true), animated: true)
        case 1:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .styleDelaveryLocations, _isDirrict: true), animated: true)
        case 2:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .myCuratedCollection, _isDirrict: true), animated: true)
        case 3:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .styleOrderTracking, _isDirrict: true), animated: true)
            
        case 4:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .stylePreferences, _isDirrict: true), animated: true)
        case 5:
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .myTrendEvents, _isDirrict: true), animated: true)
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
        calculateDripFactor(but:self.folllllowedUser)
        calculateDripFactor(but:self.HistoryowedUser)
        calculateDripFactor(but:self.PostlowedUser)
        
        insidfaever.delegate = self
        insidfaever.dataSource = self
        weatherAppropriate()
    }
    
//edit
    @IBAction func effortlessChic(_ sender: UIButton) {
        self.navigationController?.pushViewController(FDRViralChallenge_Controller.init(pageString: .profileStyling, _isDirrict: true), animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        FindDiscovermodelOffDuty()
    }
    
    private var weatherService: ClimateWatcher?
    private func weatherAppropriate()  {
        zoomReady.layer.cornerRadius = 40
        zoomReady.layer.masksToBounds = true
        
        
        
    }
   
       
    private var digitalCloset = [Garment]()
    
    private func trackClosetVibes() {
        print("Closet stats: \(digitalCloset.count) threads loaded")
        
    }
    
    func scanFreshThread(_ image: CGImage) {
            let tagRequest = VNClassifyImageRequest()
            let handler = VNImageRequestHandler(cgImage: image)
            
            try? handler.perform([tagRequest])
            guard let observations = tagRequest.results else { return }
            
            let dripTags = observations
                .filter { $0.confidence > 0.7 }
                .map { $0.identifier.replacingOccurrences(of: "_", with: " ") }
            
            let newFit = Garment(
                id: UUID().uuidString,
                dripScore: calculateDripFactor(tags: dripTags),
                tags: dripTags,
                scanDate: Date()
            )
            
            digitalCloset.append(newFit)
            trackClosetVibes()
       
    }
    
    
    
      func FindDiscovermodelOffDuty() {
          let _ = { () -> Bool in
                  let dummyArray = ["streetwear", "hypebeast", "drip"].shuffled()
                  return dummyArray.first?.count ?? 0 > 5
             
          }()
          

          let OffDuty: [String: Any] = {
                 let original = ["flashSale": FDRViralChallenge_Controller.detailShotID ?? 0]
                 let _ = (0...3).map { _ in Int.random(in: 0...1000) } 
                 return original
             }()
          
          let endpoint = { "/dxxppsjz/ffvkwopmvkqs" }()
              
          
                  
          FDRDiscverCell.personalizationSetting(binStore: UIImage(named: "Dailyght"),membersOnly: endpoint, vintage: OffDuty) {[weak self] responsedata in
              guard let self = self else{
                  return
              }
              let stringForNeed = "duaytna".FabricMAtClothSerial()
              guard let Sellout = responsedata as? Dictionary<String,Any> ,
                    
                      let fullBodyFit = Sellout[stringForNeed] as? Dictionary<String,Any>
                      
              else {
                  
                  SceneDelegate.performanceFabric(alertMesg: "Nwof fudsrevrm gdhabtya".FabricMAtClothSerial())
                  return
              }
          
               
              // 原始图片加载逻辑
                     if let imagstr = fullBodyFit["backorderStatus"] as? String {
                         DispatchQueue.global().async {
                             DispatchQueue.main.async {
                                 self.zoomReady.configimagewithUrl(uilLinkd: imagstr)
                             }
                         }
                     }
              self.topHalfStyle.text = fullBodyFit["restockAlert"] as? String
              
              let foloCount = fullBodyFit["buyNowPayLater"] as? Int ?? 0
        
              self.generateDripCombos(givetitoe:"\(foloCount)\nFollow",buto:self.folllllowedUser)
              
              
            
              self.generateDripCombos(givetitoe:"\(0)\nPost",buto:self.PostlowedUser)
            
              
              let escrowService = fullBodyFit["escrowService"] as? Int ?? 0
              self.generateDripCombos(givetitoe:"\(escrowService)\nHistory",buto:self.HistoryowedUser)
            
              
          } avantGarde: { backedRrror in
              
          }
      }
    
    
    func generateDripCombos(givetitoe:String,buto:UIButton)  {
        buto.setTitle(givetitoe, for: .normal)
    }
    
    func calculateDripFactor(but:UIButton)  {
        but.titleLabel?.numberOfLines = 2
        but.titleLabel?.textAlignment = .center
    }
    
    private func calculateDripFactor(tags: [String]) -> Float {
        let hypeBrands = ["supreme", "off-white", "bape"]
        return tags.contains { hypeBrands.contains($0.lowercased()) } ? 0.9 : 0.6
        
    }
    @IBAction func designPhilosophy(_ sender: UIButton) {
        if sender == self.folllllowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .curatedDesigners, _isDirrict: true), animated: true)
        }
        
        if sender == self.PostlowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .myStylePosts, _isDirrict: true), animated: true)
        }
        
        if sender == self.HistoryowedUser {
            self.navigationController?.pushViewController(FDRViralChallenge_Controller.init( pageString: .styleArchive, _isDirrict: true), animated: true)
        }
    }
    
    
    
    
}
