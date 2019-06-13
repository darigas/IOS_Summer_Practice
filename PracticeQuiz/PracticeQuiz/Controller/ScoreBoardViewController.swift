//
//  ScoreBoardViewController.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/7/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var playerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Player.get().count
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController") as! FrontViewController
        self.present(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardTableViewCell
        cell.setScoreBoardCell(username: Player.get()[indexPath.row].username, score: String(Player.get()[indexPath.row].score))
        return cell
    }
}
