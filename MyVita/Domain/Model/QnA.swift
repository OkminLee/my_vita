//
//  QnA.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import Foundation

enum QnACategory: String, Decodable {
    case liver
    
    var text: String {
        switch self {
        case .liver: "간 건강"
        }
    }
}

struct QnA: Decodable, Hashable {
    let category: QnACategory
    let question: String
    let answers: [String]
}
