//
//  VitaListView.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import SwiftUI

struct VitaListView: View {
    var body: some View {
        ZStack {
            LazyVStack {
                ScrollView {
                    
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("+")
                            .font(.displaySmall)
                            .foregroundColor(.adsHighEmphasis)
                            .padding(16)
                            .background(Color.adsSurface2)
                            .clipShape(Circle())
                    }
                }
                .padding(.trailing, 24)
                .padding(.bottom, 16)
            }
        }.background(Color.adsSurface)
    }
}

#Preview {
    VitaListView()
}
