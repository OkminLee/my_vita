//
//  QnAListView.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import SwiftUI

struct QnAListView: View {
    
    private let fetchQnAUseCase: FetchQnAUseCase = FetchQnAUseCaseImpl()
    
    var body: some View {
        LazyVStack {
            ScrollView {
                ForEach(fetchQnAUseCase.execute(), id: \.self) { item in
                    VStack(spacing: 16) {
                        HStack {
                            Text(item.category.text)
                                .font(.bodySmall)
                                .foregroundColor(.adsHighEmphasis)
                            Spacer()
                        }
                        
                        HStack {
                            Text(item.question)
                                .font(.titleMedium)
                                .foregroundColor(.adsHighEmphasis)
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.adsSurface1)
                    .cornerRadius(8)
                    .padding(.horizontal, 24)
                }
            }
        }.background(Color.adsSurface)
    }
}

#Preview {
    QnAListView()
}
