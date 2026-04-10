//
//  FDRDRIPFaceGleamController.swift
//  FlsieDripCore
//
//  Created by mumu on 2026/4/10.
//

import UIKit

//final class FDRDRIPFaceGleamController: UIViewController {
//    
//    private let FDRDRIPmailGlow: String
//    private let FDRDRIPyearGlow: Int
//    private let FDRDRIPfinishGlow: () -> Void
//    
//    private var FDRDRIPisScanningGlow = false
//    private lazy var FDRDRIPnightRay = CAGradientLayer()
//    private lazy var FDRDRIPbackAura = UIButton(type: .system)
//    private lazy var FDRDRIPtitleAura = UILabel()
//    private lazy var FDRDRIPcopyAura = UILabel()
//    private lazy var FDRDRIPscanHalo = UIView()
//    private lazy var FDRDRIPscanTile = UIView()
//    private lazy var FDRDRIPscanGlyph = UIImageView()
//    private lazy var FDRDRIPconsentAura = UILabel()
//    private lazy var FDRDRIPconsentGlyph = UIImageView()
//    private lazy var FDRDRIPtakeAura = FDRDRIPNeonTrailButton()
//    private lazy var FDRDRIPscanSpinner = UIActivityIndicatorView(style: .medium)
//    
//    init(FDRDRIPmailGlow: String, FDRDRIPyearGlow: Int, FDRDRIPfinishGlow: @escaping () -> Void) {
//        self.FDRDRIPmailGlow = FDRDRIPmailGlow
//        self.FDRDRIPyearGlow = FDRDRIPyearGlow
//        self.FDRDRIPfinishGlow = FDRDRIPfinishGlow
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("")
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: false)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        FDRDRIPbuildFaceAura()
//    }
//    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        FDRDRIPnightRay.frame = view.bounds
//        FDRDRIPscanHalo.layer.cornerRadius = FDRDRIPscanHalo.bounds.width * 0.5
//        FDRDRIPscanTile.layer.cornerRadius = FDRDRIPscanTile.bounds.width * 0.2
//    }
//    
//    private func FDRDRIPbuildFaceAura() {
//        view.backgroundColor = .black
//        FDRDRIPnightRay.colors = [
//            UIColor(red: 35/255, green: 63/255, blue: 120/255, alpha: 1).cgColor,
//            UIColor(red: 19/255, green: 16/255, blue: 89/255, alpha: 1).cgColor,
//            UIColor(red: 9/255, green: 6/255, blue: 61/255, alpha: 1).cgColor
//        ]
//        FDRDRIPnightRay.startPoint = CGPoint(x: 0, y: 0)
//        FDRDRIPnightRay.endPoint = CGPoint(x: 0.8, y: 1)
//        view.layer.insertSublayer(FDRDRIPnightRay, at: 0)
//        
//        let FDRDRIPwidthAura = UIScreen.main.bounds.width
//        let FDRDRIPheightAura = UIScreen.main.bounds.height
//        
//        FDRDRIPbackAura.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPbackAura.tintColor = .white
//        FDRDRIPbackAura.setImage(UIImage(systemName: "chevron.left"), for: .normal)
//        FDRDRIPbackAura.addTarget(self, action: #selector(FDRDRIPrewindFaceAura), for: .touchUpInside)
//        
//        FDRDRIPtitleAura.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPtitleAura.text = "Verify Your Identity"
//        FDRDRIPtitleAura.textColor = .white
//        FDRDRIPtitleAura.font = UIFont.systemFont(ofSize: max(24, FDRDRIPwidthAura * 0.084), weight: .bold)
//        FDRDRIPtitleAura.numberOfLines = 0
//        
//        FDRDRIPcopyAura.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPcopyAura.text = "Take a clear selfie so we can verify your age. Your photo is securely stored and used solely for identity verification in accordance with our Privacy Policy."
//        FDRDRIPcopyAura.textColor = UIColor.white.withAlphaComponent(0.82)
//        FDRDRIPcopyAura.font = UIFont.systemFont(ofSize: max(15, FDRDRIPwidthAura * 0.043), weight: .regular)
//        FDRDRIPcopyAura.numberOfLines = 0
//        
//        FDRDRIPscanHalo.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPscanHalo.layer.borderWidth = 2
//        FDRDRIPscanHalo.layer.borderColor = UIColor(red: 132/255, green: 62/255, blue: 1, alpha: 1).cgColor
//        FDRDRIPscanHalo.backgroundColor = UIColor(red: 92/255, green: 56/255, blue: 178/255, alpha: 0.18)
//        
//        FDRDRIPscanTile.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPscanTile.backgroundColor = UIColor(red: 115/255, green: 66/255, blue: 181/255, alpha: 0.42)
//        
//        FDRDRIPscanGlyph.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPscanGlyph.contentMode = .scaleAspectFit
//        if #available(iOS 13.0, *) {
//            FDRDRIPscanGlyph.image = UIImage(systemName: "person.crop.rectangle")?.withTintColor(UIColor(red: 136/255, green: 72/255, blue: 1, alpha: 1), renderingMode: .alwaysOriginal)
//        }
//        
//        FDRDRIPconsentGlyph.translatesAutoresizingMaskIntoConstraints = false
//        if #available(iOS 13.0, *) {
//            FDRDRIPconsentGlyph.image = UIImage(systemName: "lock.fill")?.withTintColor(UIColor(red: 245/255, green: 191/255, blue: 68/255, alpha: 1), renderingMode: .alwaysOriginal)
//        }
//        
//        FDRDRIPconsentAura.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPconsentAura.text = "By proceeding, you consent to the processing of your selfie for age verification purposes. Your photo will not be shared with third parties."
//        FDRDRIPconsentAura.textColor = UIColor.white.withAlphaComponent(0.78)
//        FDRDRIPconsentAura.font = UIFont.systemFont(ofSize: max(13, FDRDRIPwidthAura * 0.036), weight: .medium)
//        FDRDRIPconsentAura.numberOfLines = 0
//        
//        FDRDRIPtakeAura.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPtakeAura.setTitle("Take a Selfie", for: .normal)
//        FDRDRIPtakeAura.addTarget(self, action: #selector(FDRDRIPtakeFaceAura), for: .touchUpInside)
//        
//        FDRDRIPscanSpinner.translatesAutoresizingMaskIntoConstraints = false
//        FDRDRIPscanSpinner.color = .white
//        FDRDRIPscanSpinner.hidesWhenStopped = true
//        
//        view.addSubview(FDRDRIPbackAura)
//        view.addSubview(FDRDRIPtitleAura)
//        view.addSubview(FDRDRIPcopyAura)
//        view.addSubview(FDRDRIPscanHalo)
//        view.addSubview(FDRDRIPconsentGlyph)
//        view.addSubview(FDRDRIPconsentAura)
//        view.addSubview(FDRDRIPtakeAura)
//        FDRDRIPscanHalo.addSubview(FDRDRIPscanTile)
//        FDRDRIPscanTile.addSubview(FDRDRIPscanGlyph)
//        FDRDRIPtakeAura.addSubview(FDRDRIPscanSpinner)
//        
//        NSLayoutConstraint.activate([
//            FDRDRIPbackAura.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.05),
//            FDRDRIPbackAura.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: FDRDRIPheightAura * 0.012),
//            FDRDRIPbackAura.widthAnchor.constraint(equalToConstant: 28),
//            FDRDRIPbackAura.heightAnchor.constraint(equalToConstant: 28),
//            FDRDRIPtitleAura.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.08),
//            FDRDRIPtitleAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
//            FDRDRIPtitleAura.topAnchor.constraint(equalTo: FDRDRIPbackAura.bottomAnchor, constant: FDRDRIPheightAura * 0.05),
//            FDRDRIPcopyAura.leadingAnchor.constraint(equalTo: FDRDRIPtitleAura.leadingAnchor),
//            FDRDRIPcopyAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
//            FDRDRIPcopyAura.topAnchor.constraint(equalTo: FDRDRIPtitleAura.bottomAnchor, constant: FDRDRIPheightAura * 0.014),
//            FDRDRIPscanHalo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            FDRDRIPscanHalo.topAnchor.constraint(equalTo: FDRDRIPcopyAura.bottomAnchor, constant: FDRDRIPheightAura * 0.095),
//            FDRDRIPscanHalo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.36),
//            FDRDRIPscanHalo.heightAnchor.constraint(equalTo: FDRDRIPscanHalo.widthAnchor),
//            FDRDRIPscanTile.centerXAnchor.constraint(equalTo: FDRDRIPscanHalo.centerXAnchor),
//            FDRDRIPscanTile.centerYAnchor.constraint(equalTo: FDRDRIPscanHalo.centerYAnchor),
//            FDRDRIPscanTile.widthAnchor.constraint(equalTo: FDRDRIPscanHalo.widthAnchor, multiplier: 0.36),
//            FDRDRIPscanTile.heightAnchor.constraint(equalTo: FDRDRIPscanTile.widthAnchor),
//            FDRDRIPscanGlyph.centerXAnchor.constraint(equalTo: FDRDRIPscanTile.centerXAnchor),
//            FDRDRIPscanGlyph.centerYAnchor.constraint(equalTo: FDRDRIPscanTile.centerYAnchor),
//            FDRDRIPscanGlyph.widthAnchor.constraint(equalTo: FDRDRIPscanTile.widthAnchor, multiplier: 0.54),
//            FDRDRIPscanGlyph.heightAnchor.constraint(equalTo: FDRDRIPscanGlyph.widthAnchor),
//            FDRDRIPconsentGlyph.leadingAnchor.constraint(equalTo: FDRDRIPtitleAura.leadingAnchor),
//            FDRDRIPconsentGlyph.topAnchor.constraint(equalTo: FDRDRIPscanHalo.bottomAnchor, constant: FDRDRIPheightAura * 0.17),
//            FDRDRIPconsentGlyph.widthAnchor.constraint(equalToConstant: 14),
//            FDRDRIPconsentGlyph.heightAnchor.constraint(equalToConstant: 14),
//            FDRDRIPconsentAura.leadingAnchor.constraint(equalTo: FDRDRIPconsentGlyph.trailingAnchor, constant: 6),
//            FDRDRIPconsentAura.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
//            FDRDRIPconsentAura.centerYAnchor.constraint(equalTo: FDRDRIPconsentGlyph.centerYAnchor, constant: 8),
//            FDRDRIPtakeAura.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            FDRDRIPtakeAura.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -FDRDRIPheightAura * 0.035),
//            FDRDRIPtakeAura.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.83),
//            FDRDRIPtakeAura.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.062),
//            FDRDRIPscanSpinner.centerYAnchor.constraint(equalTo: FDRDRIPtakeAura.centerYAnchor),
//            FDRDRIPscanSpinner.trailingAnchor.constraint(equalTo: FDRDRIPtakeAura.trailingAnchor, constant: -20)
//        ])
//    }
//    
//    @objc private func FDRDRIPrewindFaceAura() {
//        navigationController?.popViewController(animated: true)
//    }
//    
//    @objc private func FDRDRIPtakeFaceAura() {
//        guard FDRDRIPisScanningGlow == false else { return }
//        FDRDRIPisScanningGlow = true
//        FDRDRIPtakeAura.setTitle("Checking...", for: .normal)
//        FDRDRIPtakeAura.isUserInteractionEnabled = false
//        FDRDRIPscanSpinner.startAnimating()
//        
//        let FDRDRIPpulseAura = CABasicAnimation(keyPath: "transform.scale")
//        FDRDRIPpulseAura.fromValue = 1
//        FDRDRIPpulseAura.toValue = 1.08
//        FDRDRIPpulseAura.autoreverses = true
//        FDRDRIPpulseAura.duration = 0.45
//        FDRDRIPpulseAura.repeatCount = 2
//        FDRDRIPscanHalo.layer.add(FDRDRIPpulseAura, forKey: "FDRDRIPpulseAura")
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.15) {
//            self.FDRDRIPscanSpinner.stopAnimating()
//            self.FDRDRIPfinishGlow()
//        }
//    }
//}
