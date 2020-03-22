//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var TrueBotton: UIButton!
    @IBOutlet weak var FalseBotton: UIButton!
    @IBOutlet weak var ScoreTracking: UILabel!
    var timer = Timer()
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AnswerButtonPressed(_ sender: UIButton)
    {
        let userAnswer = sender.currentTitle!
        let AnswerIsRight = quizBrain.checkAnswer(userAnswer )
        if ( AnswerIsRight)
        {
            sender.backgroundColor = UIColor.green
        }
        else
        {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI()
    {
        QuestionLabel.text = quizBrain.getQuestion() // quiz[questionNumber].quest
        ScoreTracking.text = "Score: \(quizBrain.scoreTracking())"
        TrueBotton.backgroundColor = UIColor.clear
        FalseBotton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress() // Float(questionNumber) / Float(quiz.count)
    }
    
}

