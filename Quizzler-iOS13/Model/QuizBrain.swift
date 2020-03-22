//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Lê Anh Minh on 1/1/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
    let quiz = [
        Question(q:"I am the best Computer Scientist in the World", a:"True"),
        Question(q:"Your name is Adam",                              a:"True"),
        Question(q:"two plus two is five",a:"False")
    ]
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer( _ userAnswer: String)-> Bool {
        if userAnswer == quiz[questionNumber].answer
        {   score += 1
            return true}
        else
        { return false}
    }
    
    func getQuestion() -> String {
        return quiz[questionNumber].quest
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    func scoreTracking() -> Int {
        return score
    }
    mutating func nextQuestion()  {
        if ( questionNumber < quiz.count-1)
        {   questionNumber += 1
            
        }
            
        else{
            questionNumber = 0
            score = 0
        }
    }
}

