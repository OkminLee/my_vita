//
//  QnAListView.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import SwiftUI

struct QnAListView: View {
    
    @Binding private var showQnAList: Bool
    private let fetchQnAUseCase: FetchQnAUseCase = FetchQnAUseCaseImpl()
    
    init(
        showQnAList: Binding<Bool>
    ) {
        self._showQnAList = showQnAList
    }
    
    var body: some View {
        VStack {
            ScrollView {
                
                HStack {
                    Button(action: {
                        showQnAList = false
                    }, label: {
                        Text("취소")
                            .font(.buttonMedium)
                            .foregroundColor(.adsHighEmphasis)
                    })
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 24)
                LazyVStack {
                    ForEach(fetchQnAUseCase.execute(), id: \.self) { item in
                        VStack(spacing: 16) {
                            HStack {
                                Text(item.category.text)
                                    .font(.bodySmall)
                                    .foregroundColor(.adsMediumEmphasis)
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
                        .padding(.vertical, 4)
                    }
                }
            }
        }
        .background(Color.adsSurface)
    }
}

#Preview {
    QnAListView(showQnAList: .constant(true))
}
