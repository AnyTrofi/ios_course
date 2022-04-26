//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmiValue: String = "0.0"
    var bmi = 0.0
    
    @IBAction func HeightSlider(_ sender: UISlider) {
        let heightS = String(format: "%.2f", (sender.value))
        height = sender.value
        HeightLabel.text = heightS + " m"
        
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        let weightS = String(format: "%.0f", (sender.value))
        weight = sender.value
        WeightLabel.text = weightS + " kg"
    }
    
    @IBAction func CalculateButton(_ sender: UIButton) {
        bmi = Double((weight/(height*height)))
        //bmiValue = String(format: "%.2f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.2f", bmi)
        }
    }
    
}

