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
    
    static func get() -> [Player] {
        var players = [Player]()
        let defaults = UserDefaults.init()
        let names = defaults.stringArray(forKey: "names") ?? [String]()
        let scores = defaults.stringArray(forKey: "scores") ?? [String]()
        
        for index in 0..<names.count {
            let player = Player(username: names[index], score: Int(scores[index])!)
            players.append(player)
        }
        return players.sorted(by: { $0.score > $1.score })
    }
    
    static func save(player: Player) {
        var players = Player.get()
        players.append(player)
        var names = [String]()
        var scores = [String]()
        
        for player in players {
            names.append(player.username)
            scores.append(String(player.score))
        }
        UserDefaults.standard.set(names, forKey: "names")
        UserDefaults.standard.set(scores, forKey: "scores")
    }
}
