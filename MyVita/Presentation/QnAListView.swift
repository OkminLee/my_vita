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
        NavigationView {
            ScrollView {
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
            .navigationTitle("추천 항목")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showQnAList = false
                    }, label: {
                        Text("취소")
                            .font(.buttonMedium)
                            .foregroundColor(.adsHighEmphasis)
                    })
                }
            })
        }
        .background(Color.adsSurface)
    }
}

#Preview {
    QnAListView(showQnAList: .constant(true))
}
