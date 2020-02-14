//
//  CalView.swift
//  BMI Calculator
//
//  Created by formathead on 2020/02/12.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class CalView: UIViewController {

    
    @IBOutlet weak var bmiLb: UILabel!
    @IBOutlet weak var adviceLb: UILabel!
    
    var bmi: String?
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmi = bmi else { return }
        print(bmi)
        bmiLb.text = bmi
        adviceLb.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
