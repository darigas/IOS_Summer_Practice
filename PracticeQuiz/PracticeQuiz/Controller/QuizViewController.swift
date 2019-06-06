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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        option1.setTitle(questions.questions[0].option1Text, for: .normal)
        option2.setTitle(questions.questions[0].option2Text, for: .normal)
        option3.setTitle(questions.questions[0].option3Text, for: .normal)
        option4.setTitle(questions.questions[0].option4Text, for: .normal)
        questionTitle.text = questions.questions[0].questionTitle
    }
    
    func updateState(button: UIButton) {
        button.backgroundColor = .gray
        button.isUserInteractionEnabled = true
    }
    
    @IBAction func option1Pressed(_ sender: UIButton) {
        if questions.questions[0].option1Text == questions.questions[0].rightAnswer {
            option1.backgroundColor = .green
        }
        else {
            option1.backgroundColor = .red
        }
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    
    @IBAction func option2Pressed(_ sender: Any) {
        if questions.questions[0].option2Text == questions.questions[0].rightAnswer {
            option2.backgroundColor = .green
        }
        else {
            option2.backgroundColor = .red
        }
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    
    @IBAction func option3Pressed(_ sender: Any) {
        if questions.questions[0].option3Text == questions.questions[0].rightAnswer {
            option3.backgroundColor = .green
        }
        else {
            option3.backgroundColor = .red
        }
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    
    @IBAction func option4Pressed(_ sender: Any) {
        if questions.questions[0].option4Text == questions.questions[0].rightAnswer {
            option4.backgroundColor = .green
        }
        else {
            option4.backgroundColor = .red
        }
        option1.isUserInteractionEnabled = false
        option2.isUserInteractionEnabled = false
        option3.isUserInteractionEnabled = false
        option4.isUserInteractionEnabled = false
    }
    
    func updateQuestion() {
        updateState(button: option1)
        updateState(button: option2)
        updateState(button: option3)
        updateState(button: option4)
    }
}
