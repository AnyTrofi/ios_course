//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Андрей Трофимов on 4/24/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String!
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label.text = bmiValue
        
        if Double(bmiValue)! < 18.5 {
            AdviceLabel.text = "U need eat so many snacks)"
        } else if Double(bmiValue)! > 25.0 {
            AdviceLabel.text = "U need stop eat so sneaks"
        } else {
            AdviceLabel.text = "U are have a good weigth!)"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
