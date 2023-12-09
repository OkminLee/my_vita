//
//  FetchQnAUseCase.swift
//  MyVita
//
//  Created by 이옥민 on 12/9/23.
//

import Foundation

protocol FetchQnAUseCase {
    
    func execute() -> [QnA]
}

struct FetchQnAUseCaseImpl: FetchQnAUseCase {
    
    func execute() -> [QnA] {
        do {
            let path = Bundle.main.url(forResource: "qna", withExtension: "json")!
            let decoder = JSONDecoder()
            let data = try! Data(contentsOf: path)
            return try decoder.decode([QnA].self, from: data)
        } catch {
            // TODO: - error handling
            print(error.localizedDescription)
            return []
        }
    }
}
