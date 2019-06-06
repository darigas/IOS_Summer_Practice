//
//  QuestionList.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/4/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation

class QuestionList {
    
    var questions = [Question]()
    
    init() {
        questions.append(Question(questionTitle: "question one", option1Text: "answer one", option2Text: "answer two", option3Text: "answer three", option4Text: "answer four", rightAnswer: "answer one"))
        questions.append(Question(questionTitle: "question 1", option1Text: "answer 1", option2Text: "answer 2", option3Text: "answer 3", option4Text: "answer 4", rightAnswer: "answer 1"))
    }
}
