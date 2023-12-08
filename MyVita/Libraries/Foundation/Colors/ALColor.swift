//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit
import SwiftUI

public extension Color {
    
    static var adsPrimary: Color { Color(UIColor.adsPrimary) }
    static var adsSecondary: Color { Color(UIColor.adsSecondary) }
    static var adsTertiary: Color { Color(UIColor.adsTertiary) }
    static var adsQuaternary: Color { Color(UIColor.adsQuaternary) }
    static var adsSurface3: Color { Color(UIColor.adsSurface3) }
    static var adsSurface2: Color { Color(UIColor.adsSurface2) }
    static var adsSurface1: Color { Color(UIColor.adsSurface1) }
    static var adsSurface: Color { Color(UIColor.adsSurface) }
    static var adsBackground: Color { Color(UIColor.adsBackground) }
    static var adsSeperator: Color { Color(UIColor.adsSeperator) }
    static var adsDividerHigh: Color { Color(UIColor.adsDividerHigh) }
    static var adsDividerLow: Color { Color(UIColor.adsDividerLow) }
    static var adsDisabled: Color { Color(UIColor.adsDisabled) }
    static var adsPositive: Color { Color(UIColor.adsPositive) }
    static var adsPositiveContainer: Color { Color(UIColor.adsPositiveContainer) }
    static var adsNegative: Color { Color(UIColor.adsNegative) }
    static var adsNegativeContainer: Color { Color(UIColor.adsNegativeContainer) }
    static var adsPremium: [Color] { [Color(UIColor.init(hexString: "#FF155B")), Color(UIColor.init(hexString: "#FFA337"))] }
    static var adsScrim: Color { Color(UIColor.adsScrim) }
    
    static var adsInversEmphasis: Color { Color(UIColor.adsInversEmphasis) }
    static var adsHighEmphasis: Color { Color(UIColor.adsHighEmphasis) }
    static var adsMediumEmphasis: Color { Color(UIColor.adsMediumEmphasis) }
    static var adsLowEmphasis: Color { Color(UIColor.adsLowEmphasis) }
    
    static var adsForceWhite: Color { Color(UIColor.adsForceWhite) }
    static var adsForceBlack: Color { Color(UIColor.adsForceBlack) }
    static var adsForceGray: Color { Color(UIColor.adsForceGray) }
}

public extension UIColor {

    /*
     사용처: Element
     설명: Alarmy Color Palette를 기반으로 의미를 부여한 컬러 시스템입니다. 
          앱내 사용 의미에 맞게 필수적으로 작업되어야 하는 주요 시스템입니다.
     */
    static var adsPrimary: UIColor { ALColorPalette.red300.value }
    static var adsSecondary: UIColor { ALColorPalette.sky400.value }
    static var adsTertiary: UIColor { .dynamicPalette(lightMode: .black300, darkMode: .white400) }
    static var adsQuaternary: UIColor { .dynamicPalette(lightMode: .white600, lightAlpha: 0.8, darkMode: .black600, darkAlpha: 0.8) }
    static var adsSurface3: UIColor { .dynamicPalette(lightMode: .white500, darkMode: .black400) }
    static var adsSurface2: UIColor { .dynamicPalette(lightMode: .white300, darkMode: .black300) }
    static var adsSurface1: UIColor { .dynamicPalette(lightMode: .white100, darkMode: .black200) }
    static var adsSurface: UIColor { .dynamicPalette(lightMode: .white, darkMode: .black100) }
    static var adsBackground: UIColor { .dynamicPalette(lightMode: .white100, darkMode: .black50) }
    static var adsSeperator: UIColor { .dynamicPalette(lightMode: .white300, darkMode: .black) }
    static var adsDividerHigh: UIColor { .dynamicPalette(lightMode: .white400, darkMode: .black300) }
    static var adsDividerLow: UIColor { .dynamicPalette(lightMode: .white300, darkMode: .black200) }
    static var adsDisabled: UIColor { .dynamicPalette(lightMode: .white500, lightAlpha: 0.5, darkMode: .black500, darkAlpha: 0.5) }
    static var adsPositive: UIColor { ALColorPalette.green500.value }
    static var adsPositiveContainer: UIColor { ALColorPalette.green500.value.withAlphaComponent(0.1) }
    static var adsNegative: UIColor { ALColorPalette.violet500.value }
    static var adsNegativeContainer: UIColor { ALColorPalette.violet500.value.withAlphaComponent(0.1) }
    static var adsPremium: [UIColor] { [.init(hexString: "#FF155B"), .init(hexString: "#FFA337")] }
    static var adsScrim: UIColor { ALColorPalette.black.value.withAlphaComponent(0.85) }
    
    /*
     사용처: Text & Icon
     설명: UI Element 위에 올라가는 텍스트와 아이콘에 적용되는 컬러로 강조형으로 사용됩니다.
     */
    static var adsInversEmphasis: UIColor { .dynamicPalette(lightMode: .white, darkMode: .black) }
    static var adsHighEmphasis: UIColor { .dynamicPalette(lightMode: .black100, darkMode: .white50) }
    static var adsMediumEmphasis: UIColor { .dynamicPalette(lightMode: .black700, darkMode: .white700) }
    static var adsLowEmphasis: UIColor { .dynamicPalette(lightMode: .white900, darkMode: .black900) }
    
    /*
     사용처: Element & Text & Icon
     */
    static var adsForceWhite: UIColor { ALColorPalette.white.value }
    static var adsForceBlack: UIColor { ALColorPalette.black.value }
    static var adsForceGray: UIColor { ALColorPalette.black500.value }
}

public extension UIColor {
    
    static var oldAppbar: UIColor { .dynamicPalette(lightMode: .white200, darkMode: .black300) }
    static var oldScrim: UIColor { .dynamicPalette(lightMode: .black100, lightAlpha: 0.88, darkMode: .black, darkAlpha: 0.88) }
    static var oldSurfaceMediumEmphasis: UIColor { .dynamicPalette(lightMode: .black700, darkMode: .white900) }
    static var oldSurfaceLowEmphasis: UIColor { .dynamicPalette(lightMode: .white900, darkMode: .black600) }
    static var oldSurfaceDefault: UIColor { .dynamicPalette(lightMode: .white600, darkMode: .black500) }
    static var oldSurfaceDisabled: UIColor { .dynamicPalette(lightMode: .white500, darkMode: .black300) }
    static var oldPriority: UIColor { .dynamicPalette(lightMode: .black200, darkMode: .white600) }
    static var oldGray200: UIColor { .dynamicPalette(lightMode: .white200, darkMode: .black200) }
    static var oldPrimary: UIColor { .init(hexString: "#F50F3B") }
    static var oldSecondary: UIColor { .init(hexString: "#00A3C7") }
}

public extension LinearGradient {
    
    static var adsColorPremiumVertical: LinearGradient {
        LinearGradient(
            stops: [
                Gradient.Stop(color: .adsPremium[0], location: 0.00),
                Gradient.Stop(color: .adsPremium[1], location: 1.00),
            ],
            startPoint: UnitPoint(x: -0.02, y: 0.5),
            endPoint: UnitPoint(x: 1, y: 0.5)
        )
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hexString = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.currentIndex = scanner.string.index(after: scanner.currentIndex)
        }
        
        var color:UInt64 = 0
        scanner.scanHexInt64(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
    class func dynamicPalette(
        lightMode: ALColorPalette,
        lightAlpha: CGFloat = 1.0,
        darkMode: ALColorPalette,
        darkAlpha: CGFloat = 1.0
    ) -> UIColor {
        UIColor { (taitCollection: UITraitCollection) -> UIColor in
            switch taitCollection.userInterfaceStyle {
            case .dark:         return darkMode.value.withAlphaComponent(lightAlpha)
            case .light:        return lightMode.value.withAlphaComponent(darkAlpha)
            case .unspecified:  return lightMode.value.withAlphaComponent(darkAlpha)
            @unknown default:   return lightMode.value.withAlphaComponent(darkAlpha)
            }
        }
    }
}
