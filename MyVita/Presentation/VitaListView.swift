//
//  VitaListView.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import SwiftUI

struct VitaListView: View {
    
    @State private var showQnAList: Bool = false
    
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
                        showQnAList = true
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
        }
        .background(Color.adsSurface)
        .sheet(isPresented: $showQnAList, content: {
            QnAListView(showQnAList: $showQnAList)
        })
    }
}

#Preview {
    VitaListView()
}
