//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimer = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1.0
        timer.invalidate()
        titlelabel.text = "How do u like u eggs?"
        let hardness = sender.currentTitle!
        totalTime = eggTimer[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondPassed < totalTime{
            progressBar.progress = Float(secondPassed / totalTime)
            secondPassed += 1
        } else {
            timer.invalidate()
            titlelabel.text = "DONE!"
        }
    }
    
    
    
}
