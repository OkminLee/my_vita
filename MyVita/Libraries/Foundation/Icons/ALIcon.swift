//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/06/20.
//

import UIKit
import SwiftUI

public struct ALImage {
    
    public static func radioSelected(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.radioSelected.resize(resizable: size)) }
    public static func radioUnselected(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.radioUnselected.resize(resizable: size)) }
    public static func lock(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.lock.resize(resizable: size)) }
    public static func play(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.play.resize(resizable: size)) }
    public static func stop(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.stop.resize(resizable: size)) }
    public static func forward(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.line.forward.resize(resizable: size)) }
    public static func info(size: ResizableSize = .size24) -> Image { .init(uiImage: ALIcon.info.resize(resizable: size)) }
}

extension Image {
    
    init(inModule resourceName: String) {
        self.init(resourceName, bundle: .main)
    }
}

public struct ALIcon {
    public static let line: LineIcon = .init()
    public static let solid: SolidIcon = .init()
    public static let dismiss: DismissIcon = .init()
    public static let navi: NaviIcon = .init()
    public static let mission: MissionIcon = .init()
    public static let premium: PremiumIcon = .init()

    public static let play: UIImage = .init(inModule: "ads_ic_play")
    public static let pause: UIImage = .init(inModule: "ads_ic_pause")
    public static let stop: UIImage = .init(inModule: "ads_ic_stop")
    public static let add: UIImage = .init(inModule: "ads_ic_add")
    public static let lock: UIImage = .init(inModule: "ads_ic_lock")
    public static let checkCircleActive: UIImage = .init(inModule: "ads_check_circle_active")
    public static let checkCircleInactive: UIImage = .init(inModule: "ads_check_circle_inactive")
    public static let radioSelected: UIImage = .init(inModule: "ads_radiobutton_selected")
    public static let radioUnselected: UIImage = .init(inModule: "ads_radiobutton_unselected")
    public static let historyOutline: UIImage = .init(inModule: "ads_ic_history_outline")
    public static let youtube: UIImage = .init(inModule: "ads_ic_youtube")
    public static let instagram: UIImage = .init(inModule: "ads_ic_instagram")
    public static let info: UIImage = .init(inModule: "ads_ic_info")
}

public extension UIImage {
    
    var size12: UIImage { resize(resizable: .size12) }
    var size16: UIImage { resize(resizable: .size16) }
    var size28: UIImage { resize(resizable: .size28) }
    var size32: UIImage { resize(resizable: .size32) }
    var size128: UIImage { resize(resizable: .size128) }
    
    
}

extension UIImage {
    
    convenience init(inModule name: String) {
        self.init(named: name, in: .main, with: nil)!
    }
    
    func resize(resizable: ResizableSize) -> UIImage {
        UIGraphicsImageRenderer(size: resizable.size)
            .image { _ in draw(in: CGRect(origin: .zero, size: resizable.size)) }
    }
}

public enum ResizableSize {
    
    case size12
    case size16
    case size24
    case size28
    case size32
    case size128
    
    var size: CGSize {
        switch self {
        case .size12:   return CGSize(width: 12, height: 12)
        case .size16:   return CGSize(width: 16, height: 16)
        case .size24:   return CGSize(width: 24, height: 24)
        case .size28:   return CGSize(width: 28, height: 28)
        case .size32:   return CGSize(width: 32, height: 32)
        case .size128:  return CGSize(width: 128, height: 128)
        }
    }
}
