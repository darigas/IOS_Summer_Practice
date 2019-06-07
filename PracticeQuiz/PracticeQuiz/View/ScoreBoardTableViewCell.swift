//
//  ScoreBoardTableViewCell.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ScoreBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setScoreBoardCell(username: String, score: String) {
        scoreLabel.text = score
        usernameLabel.text = username
    }
}
