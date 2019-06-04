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
    }
}
