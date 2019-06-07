//
//  ScoreBoardViewController.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var playerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
        cell.setScoreBoardCell(username: "John", score: "10")
        return cell
    }
}
