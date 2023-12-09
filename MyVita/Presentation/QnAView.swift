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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    QnAView(
        qna: .init(
            category: .general,
            question: "질문",
            answers: [
                "아니오",
                "예"
            ]
        )
    )
}
