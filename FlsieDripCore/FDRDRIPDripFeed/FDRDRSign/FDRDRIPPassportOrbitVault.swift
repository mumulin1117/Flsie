//
//  FDRDRIPPassportOrbitVault.swift
//  FlsieDripCore
//
//  Created by  on 2026/4/10.
//

import UIKit



final class FDRDRIPPassportOrbitVault {
    
    private static func FDRDRIPmailAuraStamp(FDRDRIPmailGlow: String) -> String {
        let FDRDRIPcleanGlow = FDRDRIPmailGlow.lowercased().map { FDRDRIPcharGlow -> String in
            if FDRDRIPcharGlow.isLetter || FDRDRIPcharGlow.isNumber {
                return String(FDRDRIPcharGlow)
            }
            return "_"
        }.joined()
        return "FDRDRIP_muse_orbit_\(FDRDRIPcleanGlow)"
    }
    
    static func FDRDRIPneedsFirstMuseRoute(FDRDRIPmailGlow: String) -> Bool {
        return UserDefaults.standard.bool(forKey: FDRDRIPmailAuraStamp(FDRDRIPmailGlow: FDRDRIPmailGlow)) == false
    }
    
    static func FDRDRIPsealFirstMuseRoute(FDRDRIPmailGlow: String, FDRDRIPyearGlow: Int) {
        let FDRDRIPorbitKey = FDRDRIPmailAuraStamp(FDRDRIPmailGlow: FDRDRIPmailGlow)
        UserDefaults.standard.set(true, forKey: FDRDRIPorbitKey)
        UserDefaults.standard.set(FDRDRIPyearGlow, forKey: "\(FDRDRIPorbitKey)_year")
    }
}
