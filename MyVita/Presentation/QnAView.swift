//
//  QnAView.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import SwiftUI

struct QnAView: View {
    private let qna: QnA
    
    init(
        qna: QnA
    ) {
        self.qna = qna
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(qna.question)
                    .font(.titleMedium)
                    .foregroundColor(.adsHighEmphasis)
                    .background(Color.adsSurface1)
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color.adsSurface1)
            .cornerRadius(8)
            .padding(.bottom, 24)
            ForEach(qna.answers, id: \.self) { answer in
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text(answer)
                            .font(.buttonMedium)
                            .foregroundColor(.adsHighEmphasis)
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.adsSurface2)
                    .cornerRadius(8)
                })
            }
            Spacer()
        }
        .background(Color.adsSurface)
        .padding(.vertical, 16)
        .padding(.horizontal, 24)
    }
}

#Preview {
    QnAView(
        qna: .init(
            category: .general,
            question: "최근에 숙취로 힘든 적이 있나요?",
            answers: [
                "아니오",
                "가끔",
                "술 마시는 날 마다",
            ]
        )
    )
}
