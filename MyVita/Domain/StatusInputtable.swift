//
//  StatusInputtable.swift
//  MyVita
//
//  Created by 이옥민 on 11/25/23.
//

import Foundation

protocol StatusInputtable {
    
    var userStatus: UserStatus { get }
    
    func input(text: String)
}
