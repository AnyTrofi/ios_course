//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var aAnswer: UIButton!
    @IBOutlet weak var bAnswer: UIButton!
    @IBOutlet weak var cAnswer: UIButton!
    @IBOutlet weak var userScore: UILabel!
    
    var quizBrain = QuizBrain()
    var answers : Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = Float(0)
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let userGotItRigth = quizBrain.checkAnswer(answer: userAnswer!)
        
        if userGotItRigth {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        userScore.text = quizBrain.userScoreCount()
        answers = quizBrain.getAnswers()
        aAnswer.titleLabel?.text = answers[0]
        bAnswer.titleLabel?.text = answers[1]
        cAnswer.titleLabel?.text = answers[2]
        aAnswer.backgroundColor = UIColor.clear
        bAnswer.backgroundColor = UIColor.clear
        cAnswer.backgroundColor = UIColor.clear
    }
    

}

