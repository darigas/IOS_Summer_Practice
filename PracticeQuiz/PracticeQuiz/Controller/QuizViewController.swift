//
//  QuizViewController.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/4/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!

    var questions = QuestionList()
    
    var questionNumber: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(questions.questions)
        option1.setTitle(questions.questions[0].option1Text, for: .normal)
        option2.setTitle(questions.questions[0].option2Text, for: .normal)
        option3.setTitle(questions.questions[0].option3Text, for: .normal)
        option4.setTitle(questions.questions[0].option4Text, for: .normal)
        questionTitle.text = questions.questions[0].questionTitle
    }
    
    func updateButtonInteraction() {
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    func updateStateButton(button: UIButton, color: UIColor, enabled: Bool) {
        button.backgroundColor = color
        button.isUserInteractionEnabled = enabled
    }
    
    func updateAllButtons() {
        updateStateButton(button: option1, color: .lightGray, enabled: true)
        updateStateButton(button: option2, color: .lightGray, enabled: true)
        updateStateButton(button: option3, color: .lightGray, enabled: true)
        updateStateButton(button: option4, color: .lightGray, enabled: true)
    }
    
    @IBAction func option1Pressed(_ sender: UIButton) {
        if questions.questions[questionNumber].option1Text == questions.questions[questionNumber].rightAnswer {
            option1.backgroundColor = .green
            updateButtonInteraction()
        }
        else {
            option1.backgroundColor = .red
            updateButtonInteraction()
        }
        questionNumber += 1
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func option2Pressed(_ sender: Any) {
        if questions.questions[questionNumber].option2Text == questions.questions[questionNumber].rightAnswer {
            option2.backgroundColor = .green
            updateButtonInteraction()
        }
        else {
            option2.backgroundColor = .red
            updateButtonInteraction()
        }
        questionNumber += 1
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func option3Pressed(_ sender: Any) {
        if questions.questions[questionNumber].option3Text == questions.questions[questionNumber].rightAnswer {
            option3.backgroundColor = .green
            updateButtonInteraction()
        }
        else {
            option3.backgroundColor = .red
            updateButtonInteraction()
        }
        questionNumber += 1
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @IBAction func option4Pressed(_ sender: Any) {
        if questions.questions[questionNumber].option4Text == questions.questions[questionNumber].rightAnswer {
            option4.backgroundColor = .green
            updateButtonInteraction()
        }
        else {
            option4.backgroundColor = .red
            updateButtonInteraction()
        }
        questionNumber += 1
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() {
        if questionNumber <= questions.questions.count - 1 {
            option1.setTitle(questions.questions[questionNumber].option1Text, for: .normal)
            option2.setTitle(questions.questions[questionNumber].option2Text, for: .normal)
            option3.setTitle(questions.questions[questionNumber].option3Text, for: .normal)
            option4.setTitle(questions.questions[questionNumber].option4Text, for: .normal)
            questionTitle.text = questions.questions[questionNumber].questionTitle
        }
        else {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
            self.present(controller, animated: true)
            
        }
        updateAllButtons()
    }
}
