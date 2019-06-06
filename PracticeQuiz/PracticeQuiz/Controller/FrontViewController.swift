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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        if usernameField.text != ""{
            performSegue(withIdentifier: "showQuiz", sender: self)
        }
    }
}
