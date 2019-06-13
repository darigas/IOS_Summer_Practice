//
//  FrontViewController.swift
//  PracticeQuiz
//
//  Created by Dariga Akhmetova on 6/6/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    static var username: String = "Undefined"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        if usernameField.text != "" {
            FrontViewController.username = usernameField.text!
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
            self.present(controller, animated: true)
//            for i in 0..<QuizViewController.players.count {
//                if QuizViewController.players[i].username != usernameField.text {
//                    FrontViewController.player.username = usernameField.text!
//                }
//            }
        }
            
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
}
