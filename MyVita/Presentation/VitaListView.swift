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
            let path = Bundle.main.url(forResource: "qna", withExtension: "json")!
            let decoder = JSONDecoder()
            let data = try! Data(contentsOf: path)
            let list = try! decoder.decode([QnA].self, from: data)
            ForEach(list, id: \.self) { item in
                VStack {
                    Text(item.question)
                    ForEach(item.answers, id: \.self) { answer in
                        Text(answer)
                    }
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
