//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Andrey Trofimov on 3/27/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: Array<String>
    let correctAnswer: String
    
    init(q: String, a: Array<String>, cA: String) {
        text = q
        answers = a
        correctAnswer = cA
    }
}
