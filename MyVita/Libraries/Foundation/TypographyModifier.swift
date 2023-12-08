//
//  ALTextModifier.swift
//  
//
//  Created by delightroom_saeroi on 2022/11/21.
//

import SwiftUI

public extension View {
    
    func font(_ typography: Typography) -> some View {
        modifier(TypographyModifier(typography: typography))
    }
}

struct TypographyModifier: ViewModifier {
    
    let typography: Typography
    
    func body(content: Content) -> some View {
        if let lineHeight = typography.lineHeight {
            content
                .font(Font(typography.font))
                .lineSpacing(lineHeight - typography.font.lineHeight)
                .padding(.vertical, (lineHeight - typography.font.lineHeight) / 2)
        } else {
            content
                .font(Font(typography.font))
        }
    }
}
