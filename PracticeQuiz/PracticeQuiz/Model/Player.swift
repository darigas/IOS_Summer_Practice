//
//  Player.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import Foundation


class Player {
    var username: String = ""
    var score: Int = 0
    
    init(username: String, score: Int){
        self.username = username
        self.score = score
    }
}
