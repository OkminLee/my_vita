//
//  SwiftUIView.swift
//  
//
//  Created by delightroom_Leedi on 2023/03/21.
//

import SwiftUI

struct TypoPreview: View {
    
    let title: String
    let typography: Typography
    
    var body: some View {
        Text(title)
            .fixedSize(horizontal: false, vertical: true)
            .font(typography)
    }
}

struct TypoPreview_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            ForEach(displayDicts.indices, id: \.self) {
                let typoDict = displayDicts[$0]
                let title: String = typoDict["title"] as! String
                let typography: Typography = typoDict["typography"] as! Typography
                TypoPreview(title: title,
                            typography: typography)
                .border(.orange)
            }
        }
        .padding(.vertical, 50)
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Display")

    }
}

let displayDicts = [
    ["title": "DisplayXLarge", "typography": Typography.displayXLarge],
    ["title": "DisplayLarge", "typography": Typography.displayLarge],
    ["title": "DisplayMedium", "typography": Typography.displayMedium],
    ["title": "DisplaySmall", "typography": Typography.displaySmall],
    ["title": "DisplayXSmall", "typography": Typography.displayXSmall],
    ["title": "TitleLarge", "typography": Typography.titleLarge],
    ["title": "TitleMedium", "typography": Typography.titleMedium],
    ["title": "TitleSmall", "typography": Typography.titleSmall],
    ["title": "TitleXSmall", "typography": Typography.titleXSmall],
    ["title": "BodyLarge", "typography": Typography.bodyLarge],
    ["title": "BodyMedium", "typography": Typography.bodyMedium],
    ["title": "BodySmall", "typography": Typography.bodySmall],
    ["title": "OverlineLarge", "typography": Typography.overlineLarge],
    ["title": "OverlineSmall", "typography": Typography.overlineSmall],
    ["title": "CaptionLarge", "typography": Typography.captionLarge],
    ["title": "CaptionSmall", "typography": Typography.captionSmall],
    ["title": "ButtonLarge\nButtonLarge", "typography": Typography.buttonLarge],
    ["title": "ButtonMedium\nButtonMedium", "typography": Typography.buttonMedium],
    ["title": "ButtonSmall\nButtonSmall", "typography": Typography.buttonSmall],
    ["title": "ButtonXSmall\nButtonXSmall", "typography": Typography.buttonXSmall],
]
