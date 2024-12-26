//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Bijon Krishna Bairagi on 10/22/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//
import Foundation

struct Questions: Codable {
    let text : String
    let answers : String
    
    init(a: String, q: String) {
        text = a
        answers = q
    }
}
