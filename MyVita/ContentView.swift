//
//  ContentView.swift
//  MyVita
//
//  Created by 이옥민 on 11/25/23.
//

import SwiftUI

final class SelectInputMethod: StatusInputtable {
    
    let selectableStatus: [UserStatus] = [.chronicFatigue, .lethargy, .hangover]
    
    var userStatus: UserStatus = .unknown
    
    public init() {}
    
    func input(text: String) {
        userStatus = .init(rawValue: text) ?? .unknown
    }
}

final class TextInputMethod: StatusInputtable {
    
    var userStatus: UserStatus = .unknown
    
    public init() {}
    
    func input(text: String) {
        
    }
}


struct ContentView: View {
    
    @State private var statusInputMethod: StatusInputtable = SelectInputMethod()
    @State private var text: String = "텍스트 입력으로 증상을 설명"
    var body: some View {
        VStack {
            Spacer()
            if statusInputMethod is SelectInputMethod {
                Text("대충 증상을 선택하는 화면")
            } else {
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
            }
            Spacer()
            HStack {
                Button(action: {
                    statusInputMethod = SelectInputMethod()
                }, label: {
                    Text("선택 입력 방식")
                })
                Spacer()
                Button(action: {
                    statusInputMethod = TextInputMethod()
                }, label: {
                    Text("텍스트 입력 방식")
                })
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
