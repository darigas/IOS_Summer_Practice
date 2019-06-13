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
        questions.append(Question(questionTitle: "Who Played Wonder Woman?", option1Text: "Elena Anaya", option2Text: "Megan Fox", option3Text: "Gal Gadot", option4Text: "Angelina Jolie", rightAnswer: "Gal Gadot"))
        questions.append(Question(questionTitle: "Where Doest The Main Character of Cast Away Work?", option1Text: "US Postal Service", option2Text: "FedEx", option3Text: "Canada Post", option4Text: "UPS", rightAnswer: "FedEx"))
        questions.append(Question(questionTitle: "What Agency Doest Ethan Hunt Work For?", option1Text: "MI5", option2Text: "MI6", option3Text: "CIA", option4Text: "IMF", rightAnswer: "IMF"))
        questions.append(Question(questionTitle: "What is The Name of The Street Harry Lived On?", option1Text: "Muggle Alley", option2Text: "Private Drive", option3Text: "Privet Drive", option4Text: "Diagon Alley", rightAnswer: "Privet Drive"))
        questions.append(Question(questionTitle: "What is Nemo's Dad Named?", option1Text: "Merlin", option2Text: "Rick", option3Text: "Marvin", option4Text: "Marlin", rightAnswer: "Marlin"))
    }
}
