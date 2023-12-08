//
//  File.swift
//  
//
//  Created by delightroom_Leedi on 2022/12/06.
//

import SwiftUI

public extension View {
    
    func foregroundColor(_ uiColor: UIColor) -> some View {
        foregroundColor(Color(uiColor))
    }
    
    func foregroundStyle(_ uiColor: UIColor) -> some View {
        foregroundStyle(Color(uiColor))
    }
}
