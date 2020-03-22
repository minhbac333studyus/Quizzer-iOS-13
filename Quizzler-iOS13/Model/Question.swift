//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Lê Anh Minh on 1/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct Question{
    let quest:String
    //    "I am the best Computer Scientist in the World",
    //    "Your name is Adam",
    //    "two plus two is five"]
    let answer: String
    //    ["True","True","False"]
    init(q : String, a: String) {
        quest = q
        answer = a 
    }
}
