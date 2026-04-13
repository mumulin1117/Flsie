//
//  FDRDRIPAgeRunwayController.swift
//  FlsieDripCore
//
//  Created by  on 2026/4/10.
//

import UIKit
final class FDRDRIPAgeRunwayController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let FDRDRIPmailGlow: String
    private let FDRDRIPcontinueGlow: (Int) -> Void
    private let FDRDRIPyearOrbitRack = Array(18...70)
    private var FDRDRIPyearFocusGlow = 32
    
    private lazy var FDRDRIPmidnightGlow = CAGradientLayer()
    private lazy var FDRDRIPbackGlow = UIButton(type: .system)
    private lazy var FDRDRIPtitleGlow = UILabel()
    private lazy var FDRDRIPsubtitleGlow = UILabel()
    private lazy var FDRDRIPpickerShell = UIView()
    private lazy var FDRDRIPyearPicker = UIPickerView()
    private lazy var FDRDRIPfocusTopLine = UIView()
    private lazy var FDRDRIPfocusBottomLine = UIView()
    private lazy var FDRDRIPcontinueAura = FDRDRIPNeonTrailButton()
    
    init(FDRDRIPmailGlow: String, FDRDRIPcontinueGlow: @escaping (Int) -> Void) {
        self.FDRDRIPmailGlow = FDRDRIPmailGlow
        self.FDRDRIPcontinueGlow = FDRDRIPcontinueGlow
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FDRDRIPbuildAgeOrbit()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        FDRDRIPmidnightGlow.frame = view.bounds
    }
    
    private func FDRDRIPbuildAgeOrbit() {
        view.backgroundColor = .black
        FDRDRIPmidnightGlow.colors = [
            UIColor(red: 33/255, green: 62/255, blue: 120/255, alpha: 1).cgColor,
            UIColor(red: 22/255, green: 19/255, blue: 101/255, alpha: 1).cgColor,
            UIColor(red: 8/255, green: 7/255, blue: 67/255, alpha: 1).cgColor
        ]
        FDRDRIPmidnightGlow.startPoint = CGPoint(x: 0, y: 0)
        FDRDRIPmidnightGlow.endPoint = CGPoint(x: 0.78, y: 1)
        view.layer.insertSublayer(FDRDRIPmidnightGlow, at: 0)
        
        let FDRDRIPwidthAura = UIScreen.main.bounds.width
        let FDRDRIPheightAura = UIScreen.main.bounds.height
        let FDRDRIPtrailAura = max(56, FDRDRIPheightAura * 0.058)
        
        FDRDRIPbackGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPbackGlow.tintColor = .white
        FDRDRIPbackGlow.setImage(UIImage(systemName: "cvhfedvsrsoung.llderfwt".FDRDRIPFabricMAtClothSerial()), for: .normal)
        FDRDRIPbackGlow.addTarget(self, action: #selector(FDRDRIPrewindOrbit), for: .touchUpInside)
        
        FDRDRIPtitleGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPtitleGlow.text = "Hkoewm uoblcdr dalrseb qygobuc?".FDRDRIPFabricMAtClothSerial()
        FDRDRIPtitleGlow.textColor = .white
        FDRDRIPtitleGlow.font = UIFont.systemFont(ofSize: max(24, FDRDRIPwidthAura * 0.088), weight: .bold)
        
        FDRDRIPsubtitleGlow.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPsubtitleGlow.text = "Pnlnecahscer npbrsodvhiudues bysosumrb habgree jinne rydesajrrs".FDRDRIPFabricMAtClothSerial()
        FDRDRIPsubtitleGlow.textColor = UIColor.white.withAlphaComponent(0.78)
        FDRDRIPsubtitleGlow.font = UIFont.systemFont(ofSize: max(15, FDRDRIPwidthAura * 0.046), weight: .regular)
        
        FDRDRIPpickerShell.translatesAutoresizingMaskIntoConstraints = false
        
        FDRDRIPyearPicker.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPyearPicker.delegate = self
        FDRDRIPyearPicker.dataSource = self
        FDRDRIPyearPicker.backgroundColor = .clear
        
        FDRDRIPfocusTopLine.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPfocusTopLine.backgroundColor = UIColor(red: 128/255, green: 63/255, blue: 1, alpha: 1)
        
        FDRDRIPfocusBottomLine.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPfocusBottomLine.backgroundColor = UIColor(red: 128/255, green: 63/255, blue: 1, alpha: 1)
        
        FDRDRIPcontinueAura.translatesAutoresizingMaskIntoConstraints = false
        FDRDRIPcontinueAura.setTitle("Ccosnbttignpuve".FDRDRIPFabricMAtClothSerial(), for: .normal)
        FDRDRIPcontinueAura.addTarget(self, action: #selector(FDRDRIPadvanceOrbit), for: .touchUpInside)
        
        view.addSubview(FDRDRIPbackGlow)
        view.addSubview(FDRDRIPtitleGlow)
        view.addSubview(FDRDRIPsubtitleGlow)
        view.addSubview(FDRDRIPpickerShell)
        view.addSubview(FDRDRIPcontinueAura)
        FDRDRIPpickerShell.addSubview(FDRDRIPyearPicker)
        FDRDRIPpickerShell.addSubview(FDRDRIPfocusTopLine)
        FDRDRIPpickerShell.addSubview(FDRDRIPfocusBottomLine)
        
        NSLayoutConstraint.activate([
            FDRDRIPbackGlow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.05),
            FDRDRIPbackGlow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: FDRDRIPheightAura * 0.01),
            FDRDRIPbackGlow.widthAnchor.constraint(equalToConstant: 28),
            FDRDRIPbackGlow.heightAnchor.constraint(equalToConstant: 28),
            FDRDRIPtitleGlow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: FDRDRIPwidthAura * 0.08),
            FDRDRIPtitleGlow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -FDRDRIPwidthAura * 0.12),
            FDRDRIPtitleGlow.topAnchor.constraint(equalTo: FDRDRIPbackGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.052),
            FDRDRIPsubtitleGlow.leadingAnchor.constraint(equalTo: FDRDRIPtitleGlow.leadingAnchor),
            FDRDRIPsubtitleGlow.trailingAnchor.constraint(equalTo: FDRDRIPtitleGlow.trailingAnchor),
            FDRDRIPsubtitleGlow.topAnchor.constraint(equalTo: FDRDRIPtitleGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.012),
            FDRDRIPpickerShell.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPpickerShell.topAnchor.constraint(equalTo: FDRDRIPsubtitleGlow.bottomAnchor, constant: FDRDRIPheightAura * 0.052),
            FDRDRIPpickerShell.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.54),
            FDRDRIPpickerShell.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.44),
            FDRDRIPyearPicker.leadingAnchor.constraint(equalTo: FDRDRIPpickerShell.leadingAnchor),
            FDRDRIPyearPicker.trailingAnchor.constraint(equalTo: FDRDRIPpickerShell.trailingAnchor),
            FDRDRIPyearPicker.topAnchor.constraint(equalTo: FDRDRIPpickerShell.topAnchor),
            FDRDRIPyearPicker.bottomAnchor.constraint(equalTo: FDRDRIPpickerShell.bottomAnchor),
            FDRDRIPfocusTopLine.centerXAnchor.constraint(equalTo: FDRDRIPpickerShell.centerXAnchor),
            FDRDRIPfocusTopLine.centerYAnchor.constraint(equalTo: FDRDRIPpickerShell.centerYAnchor, constant: -FDRDRIPtrailAura * 0.5),
            FDRDRIPfocusTopLine.widthAnchor.constraint(equalTo: FDRDRIPpickerShell.widthAnchor, multiplier: 0.72),
            FDRDRIPfocusTopLine.heightAnchor.constraint(equalToConstant: 3),
            FDRDRIPfocusBottomLine.centerXAnchor.constraint(equalTo: FDRDRIPpickerShell.centerXAnchor),
            FDRDRIPfocusBottomLine.centerYAnchor.constraint(equalTo: FDRDRIPpickerShell.centerYAnchor, constant: FDRDRIPtrailAura * 0.5),
            FDRDRIPfocusBottomLine.widthAnchor.constraint(equalTo: FDRDRIPfocusTopLine.widthAnchor),
            FDRDRIPfocusBottomLine.heightAnchor.constraint(equalTo: FDRDRIPfocusTopLine.heightAnchor),
            FDRDRIPcontinueAura.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FDRDRIPcontinueAura.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -FDRDRIPheightAura * 0.032),
            FDRDRIPcontinueAura.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.83),
            FDRDRIPcontinueAura.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.062)
        ])
        
        if let FDRDRIPseedGlow = FDRDRIPyearOrbitRack.firstIndex(of: FDRDRIPyearFocusGlow) {
            FDRDRIPyearPicker.selectRow(FDRDRIPseedGlow, inComponent: 0, animated: false)
        }
    }
    
    @objc private func FDRDRIPrewindOrbit() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func FDRDRIPadvanceOrbit() {
        FDRDRIPcontinueGlow(FDRDRIPyearFocusGlow)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        FDRDRIPyearOrbitRack.count
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        max(56, UIScreen.main.bounds.height * 0.058)
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        UIScreen.main.bounds.width * 0.42
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let FDRDRIPyearLabel = (view as? UILabel) ?? UILabel()
        let FDRDRIProwAura = FDRDRIPyearOrbitRack[row]
        let FDRDRIPcenterAura = pickerView.selectedRow(inComponent: component)
        let FDRDRIPdistanceAura = abs(FDRDRIPcenterAura - row)
        
        FDRDRIPyearLabel.textAlignment = .center
        FDRDRIPyearLabel.text = "\(FDRDRIProwAura)"
        
        switch FDRDRIPdistanceAura {
        case 0:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 56, weight: .heavy)
            FDRDRIPyearLabel.textColor = .white
            FDRDRIPyearLabel.alpha = 1
        case 1:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.5)
            FDRDRIPyearLabel.alpha = 0.92
        case 2:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.28)
            FDRDRIPyearLabel.alpha = 0.68
        default:
            FDRDRIPyearLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            FDRDRIPyearLabel.textColor = UIColor.white.withAlphaComponent(0.14)
            FDRDRIPyearLabel.alpha = 0.4
        }
        
        return FDRDRIPyearLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        FDRDRIPyearFocusGlow = FDRDRIPyearOrbitRack[row]
        pickerView.reloadAllComponents()
    }
}
