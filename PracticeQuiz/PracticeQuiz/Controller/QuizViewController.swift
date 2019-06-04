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
    
    @IBAction func option1Pressed(_ sender: UIButton) {
        if questions.questions[0].option1Text == questions.questions[0].rightAnswer {
            questionTitle.text = "YOU ARE RIGHT!"
        }
        else {
            questionTitle.text = "YOU ARE WRONG!"
        }
    }
}
