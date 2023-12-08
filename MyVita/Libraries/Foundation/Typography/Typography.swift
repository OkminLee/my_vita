//
//  ALColor.swift
//
//
//  Created by smis on 2021/07/05.
//

import UIKit
import SwiftUI

enum LexendType: String {
    case semiBold = "Lexend-SemiBold"
    case regular = "Lexend-Regular"
}

func lexend(_ type: LexendType, ofSize size: CGFloat) -> UIFont {
    let lexendFont = UIFont(name: type.rawValue, size: size)
    let systemFont = UIFont.systemFont(ofSize: size, weight: .heavy)
    guard lexendFont == nil else { return lexendFont! }
    guard let fontUrl = Bundle.main.url(forResource: type.rawValue, withExtension: "ttf"),
          let fontDataProvider = CGDataProvider(url: fontUrl as CFURL),
          let font = CGFont(fontDataProvider) else {
              return systemFont
          }
    var error: Unmanaged<CFError>?
    guard CTFontManagerRegisterGraphicsFont(font, &error) else {
        return systemFont
    }
    return UIFont(name: type.rawValue, size: size)!
}

public struct Typography {
    
    let font: UIFont
    let lineHeight: CGFloat?
    
    init(
        font: UIFont,
        lineHeight: CGFloat? = nil
    ) {
        self.font = font
        self.lineHeight = lineHeight
    }
}

extension Typography {
    
    /*
     Type: Display
     Desc: 시간 표기, 카운트다운 표기와 같이 숫자가 단독으로 강조되는 정보에 사용하며, 해제 플로우에서 행동 관련 정보에 사용됩니다.
     */
    public static let displayXLarge: Typography = { .init(font: .systemFont(ofSize: 96, weight: .semibold), lineHeight: 112) }()
    public static let displayLarge: Typography = {  .init(font: .systemFont(ofSize: 72, weight: .semibold), lineHeight: 86) }()
    public static let displayMedium: Typography = { .init(font: .systemFont(ofSize: 48, weight: .semibold), lineHeight: 56) }()
    public static let displaySmall: Typography = {  .init(font: .systemFont(ofSize: 36, weight: .semibold), lineHeight: 42) }()
    public static let displayXSmall: Typography = { .init(font: .systemFont(ofSize: 32, weight: .semibold), lineHeight: 38) }()
    /*
     Type: Title
     Desc: 페이지나 정보영역의 제목으로 되거나 주요정보 혹은 강조할 정보에도 사용합니다.
     */
    public static let titleLarge: Typography = {  .init(font: .systemFont(ofSize: 24, weight: .bold), lineHeight: 32) }()
    public static let titleMedium: Typography = { .init(font: .systemFont(ofSize: 20, weight: .bold), lineHeight: 28) }()
    public static let titleSmall: Typography = {  .init(font: .systemFont(ofSize: 16, weight: .bold), lineHeight: 22) }()
    public static let titleXSmall: Typography = { .init(font: .systemFont(ofSize: 14, weight: .bold), lineHeight: 20) }()
    /*
     Type: Body
     Desc: 디스크립션으로 정보설명에 주로 사용됩니다.
     */
    public static let bodyLarge: Typography = {  .init(font: .systemFont(ofSize: 18, weight: .regular), lineHeight: 26) }()
    public static let bodyMedium: Typography = { .init(font: .systemFont(ofSize: 16, weight: .regular), lineHeight: 24) }()
    public static let bodySmall: Typography = {  .init(font: .systemFont(ofSize: 14, weight: .regular), lineHeight: 22) }()
    /*
     Type: Oveline
     Desc: 보조 정보에 사용됩니다.
     */
    public static let overlineLarge: Typography = {  .init(font: .systemFont(ofSize: 12, weight: .bold), lineHeight: 16) }()
    public static let overlineSmall: Typography = {  .init(font: .systemFont(ofSize: 12, weight: .regular), lineHeight: 16) }()
    /*
     Type: Caption
     Desc: 가장 낮은 정보에서 사용됩니다. 2줄이상으로  길어지는 정보에는 적용하지 않습니다.
     */
    public static let captionLarge: Typography = {  .init(font: .systemFont(ofSize: 10, weight: .bold), lineHeight: 14) }()
    public static let captionSmall: Typography = {  .init(font: .systemFont(ofSize: 10, weight: .regular), lineHeight: 14) }()
    /*
     Type: Button
     Desc: 버튼 전용 타이포입니다.
     */
    public static let buttonLarge: Typography = {  .init(font: .systemFont(ofSize: 18, weight: .medium)) }()
    public static let buttonMedium: Typography = { .init(font: .systemFont(ofSize: 16, weight: .medium)) }()
    public static let buttonSmall: Typography = {  .init(font: .systemFont(ofSize: 14, weight: .medium)) }()
    public static let buttonXSmall: Typography = { .init(font: .systemFont(ofSize: 12, weight: .regular)) }()
}

extension String {
    public func font(_ typo: Typography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: typo.font, .foregroundColor: UIColor.adsHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}

extension NSMutableAttributedString {
    public func number() -> NSMutableAttributedString {
        guard let font = attribute(.font, at: 0, effectiveRange: nil) as? UIFont else { return self }
        let range = NSRange(location: 0, length: length)
        addAttribute(.font, value: lexend(font.pointSize == 110 ? .regular : .semiBold, ofSize: font.pointSize), range: range)
        return self
    }
}

extension NSMutableAttributedString {
    public func addColor(_ uiColor: UIColor) -> NSMutableAttributedString {
        guard self.length > 0 else { return self }
        let result = self
        let range = NSRange(location: 0, length: self.length)
        if attribute(.foregroundColor, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.foregroundColor, range: range)
        }
        result.addAttribute(.foregroundColor, value: uiColor, range: range)
        return result
    }
    
    public func addAlignment(_ alignment: NSTextAlignment) -> NSMutableAttributedString {
        guard self.length > 0 else { return self }
        let result = self
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        let range = NSRange(location: 0, length: self.length)
        if attribute(.paragraphStyle, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.paragraphStyle, range: range)
        }
        result.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: self.length))
        return result
    }
}
