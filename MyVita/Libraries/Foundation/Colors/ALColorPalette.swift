//
//  ALColorPalette.swift
//  
//
//  Created by 이옥민 on 2022/04/12.
//

import UIKit
import SwiftUI

public enum ALColorPalette {
    
    case white
    case white50
    case white100
    case white200
    case white300
    case white400
    case white500
    case white600
    case white700
    case white800
    case white900
    
    case black
    case black50
    case black100
    case black200
    case black300
    case black400
    case black500
    case black600
    case black700
    case black800
    case black900
    
    case red50
    case red100
    case red200
    case red300
    case red400
    case red500
    case red600
    case red700
    case red800
    case red900
    
    case orange50
    case orange100
    case orange200
    case orange300
    case orange400
    case orange500
    case orange600
    case orange700
    case orange800
    case orange900
    
    case yellow50
    case yellow100
    case yellow200
    case yellow300
    case yellow400
    case yellow500
    case yellow600
    case yellow700
    case yellow800
    case yellow900
    
    case green50
    case green100
    case green200
    case green300
    case green400
    case green500
    case green600
    case green700
    case green800
    case green900
    
    case sky50
    case sky100
    case sky200
    case sky300
    case sky400
    case sky500
    case sky600
    case sky700
    case sky800
    case sky900
    
    case blue50
    case blue100
    case blue200
    case blue300
    case blue400
    case blue500
    case blue600
    case blue700
    case blue800
    case blue900
    
    case purple50
    case purple100
    case purple200
    case purple300
    case purple400
    case purple500
    case purple600
    case purple700
    case purple800
    case purple900
    
    case magenta50
    case magenta100
    case magenta200
    case magenta300
    case magenta400
    case magenta500
    case magenta600
    case magenta700
    case magenta800
    case magenta900
    
    case violet50
    case violet100
    case violet200
    case violet300
    case violet400
    case violet500
    case violet600
    case violet700
    case violet800
    case violet900
}

extension ALColorPalette {
    
    public var color: Color { Color(value) }
    public var value: UIColor {
        switch self {
        
        case .white:        return .init(hexString: "#FFFFFF")
        case .white50:      return .init(hexString: "#F7FAFF")
        case .white100:     return .init(hexString: "#F3F5FB")
        case .white200:     return .init(hexString: "#EDF1FA")
        case .white300:     return .init(hexString: "#E6ECF7")
        case .white400:     return .init(hexString: "#DDE3F0")
        case .white500:     return .init(hexString: "#D1D8E5")
        case .white600:     return .init(hexString: "#C5CDDB")
        case .white700:     return .init(hexString: "#B6BECC")
        case .white800:     return .init(hexString: "#A8AFBD")
        case .white900:     return .init(hexString: "#9BA3B2")
        
        case .black:        return .init(hexString: "#000000")
        case .black50:      return .init(hexString: "#121315")
        case .black100:     return .init(hexString: "#1D1F26")
        case .black200:     return .init(hexString: "#24272E")
        case .black300:     return .init(hexString: "#2F333D")
        case .black400:     return .init(hexString: "#3E434F")
        case .black500:     return .init(hexString: "#4B515E")
        case .black600:     return .init(hexString: "#585F6E")
        case .black700:     return .init(hexString: "#666D7D")
        case .black800:     return .init(hexString: "#747C8C")
        case .black900:     return .init(hexString: "#858E9E")
        
        case .red50:        return .init(hexString: "#611B24")
        case .red100:       return .init(hexString: "#94091C")
        case .red200:       return .init(hexString: "#CC0C26")
        case .red300:       return .init(hexString: "#EB2640")
        case .red400:       return .init(hexString: "#FA3C55")
        case .red500:       return .init(hexString: "#FA5F74")
        case .red600:       return .init(hexString: "#FA8C9B")
        case .red700:       return .init(hexString: "#FAAFB9")
        case .red800:       return .init(hexString: "#FCCFD5")
        case .red900:       return .init(hexString: "#FCE8EB")
            
        case .sky50:        return .init(hexString: "#11343D")
        case .sky100:       return .init(hexString: "#084B5C")
        case .sky200:       return .init(hexString: "#056780")
        case .sky300:       return .init(hexString: "#0788A8")
        case .sky400:       return .init(hexString: "#14A8CC")
        case .sky500:       return .init(hexString: "#2DBCE0")
        case .sky600:       return .init(hexString: "#4DCFF0")
        case .sky700:       return .init(hexString: "#7FDDF5")
        case .sky800:       return .init(hexString: "#B4ECFA")
        case .sky900:       return .init(hexString: "#DBF8FF")

        case .yellow50:     return .init(hexString: "#523400")
        case .yellow100:    return .init(hexString: "#854700")
        case .yellow200:    return .init(hexString: "#C26700")
        case .yellow300:    return .init(hexString: "#F08800")
        case .yellow400:    return .init(hexString: "#F59B00")
        case .yellow500:    return .init(hexString: "#FFB200")
        case .yellow600:    return .init(hexString: "#FFC942")
        case .yellow700:    return .init(hexString: "#FFD875")
        case .yellow800:    return .init(hexString: "#FFE7A3")
        case .yellow900:    return .init(hexString: "#FEF0CB")
            
        case .green50:      return .init(hexString: "#1A4D32")
        case .green100:     return .init(hexString: "#236642")
        case .green200:     return .init(hexString: "#2F8A59")
        case .green300:     return .init(hexString: "#39A86D")
        case .green400:     return .init(hexString: "#42C27E")
        case .green500:     return .init(hexString: "#54D18E")
        case .green600:     return .init(hexString: "#81DEAC")
        case .green700:     return .init(hexString: "#ABE8C8")
        case .green800:     return .init(hexString: "#CAF0DC")
        case .green900:     return .init(hexString: "#E1F5EA")
            
        case .violet50:     return .init(hexString: "#3A1D61")
        case .violet100:    return .init(hexString: "#4A257A")
        case .violet200:    return .init(hexString: "#5F2F9E")
        case .violet300:    return .init(hexString: "#753AC2")
        case .violet400:    return .init(hexString: "#8C4CE0")
        case .violet500:    return .init(hexString: "#A35CFF")
        case .violet600:    return .init(hexString: "#BA85FF")
        case .violet700:    return .init(hexString: "#CEA8FF")
        case .violet800:    return .init(hexString: "#E2CCFF")
        case .violet900:    return .init(hexString: "#F1E5FF")
        
        case .blue50:       return .init(hexString: "#161F40")
        case .blue100:      return .init(hexString: "#243263")
        case .blue200:      return .init(hexString: "#314694")
        case .blue300:      return .init(hexString: "#425CB8")
        case .blue400:      return .init(hexString: "#5B75D4")
        case .blue500:      return .init(hexString: "#7C94EB")
        case .blue600:      return .init(hexString: "#A1B4F7")
        case .blue700:      return .init(hexString: "#C0CDFC")
        case .blue800:      return .init(hexString: "#DEE5FC")
        case .blue900:      return .init(hexString: "#F8F9FD")
        
        case .purple50:     return .init(hexString: "#251B42")
        case .purple100:    return .init(hexString: "#392473")
        case .purple200:    return .init(hexString: "#4F32A1")
        case .purple300:    return .init(hexString: "#6746C2")
        case .purple400:    return .init(hexString: "#8160DB")
        case .purple500:    return .init(hexString: "#9F82ED")
        case .purple600:    return .init(hexString: "#BCA6F7")
        case .purple700:    return .init(hexString: "#D4C5FC")
        case .purple800:    return .init(hexString: "#E9E0FF")
        case .purple900:    return .init(hexString: "#FBFAFF")
        
        case .magenta900:   return .init(hexString: "#FCF7FC")
        case .magenta800:   return .init(hexString: "#FCD7F9")
        case .magenta700:   return .init(hexString: "#F7B5F2")
        case .magenta600:   return .init(hexString: "#F28DEA")
        case .magenta500:   return .init(hexString: "#DE66D4")
        case .magenta400:   return .init(hexString: "#C246B7")
        case .magenta300:   return .init(hexString: "#A13297")
        case .magenta200:   return .init(hexString: "#7A2573")
        case .magenta100:   return .init(hexString: "#541F50")
        case .magenta50:    return .init(hexString: "#30182E")
            
        case .orange50:     return .init(hexString: "#3B1912")
        case .orange100:    return .init(hexString: "#66200A")
        case .orange200:    return .init(hexString: "#992C02")
        case .orange300:    return .init(hexString: "#BD3F00")
        case .orange400:    return .init(hexString: "#DB5B0B")
        case .orange500:    return .init(hexString: "#F27E24")
        case .orange600:    return .init(hexString: "#FCA553")
        case .orange700:    return .init(hexString: "#FFC582")
        case .orange800:    return .init(hexString: "#FFE2BA")
        case .orange900:    return .init(hexString: "#FFFAF2")
        }
    }
}
