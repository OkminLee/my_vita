//
//  QnA.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import Foundation

enum QnACategory: String, Decodable {
    case liver
    case heart
    case lungs
    case mental
    case digestive
    case sleep
    case vision
    case general
    
    var text: String {
        switch self {
        case .liver: "간 건강"
        case .heart: "심장 건강"
        case .lungs: "폐 건강"
        case .mental: "정신 건강"
        case .digestive: "소화계"
        case .sleep: "수면"
        case .vision: "시력"
        case .general: "일반"
        }
    }
}

struct QnA: Decodable, Hashable {
    let category: QnACategory
    let question: String
    let answers: [String]
}
