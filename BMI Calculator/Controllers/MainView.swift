//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class MainView: UIViewController {

    @IBOutlet weak var heightLb: UISlider!
    @IBOutlet weak var weightLb: UISlider!
    @IBOutlet weak var heightValueLb: UILabel!
    @IBOutlet weak var weightValueLb: UILabel!
    
    var calculatorM = CalculatorM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSlideChanged(_ sender: UISlider) {
        let inputHeight = String(format: "%.2f", sender.value)
        self.heightValueLb.text = "\(inputHeight)m"
    }
    
    
    @IBAction func weightSlideChanged(_ sender: UISlider) {
        let inputWeight = String(format: "%.1f", sender.value)
        self.weightValueLb.text = "\(inputWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let height = self.heightLb.value
        let weight = self.weightLb.value
        
        calculatorM.bmiCalculate(height: height, weight: weight)
        
        performSegue(withIdentifier: "gotoCal", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoCal" {
            let calVC = segue.destination as! CalView
            let bmi = calculatorM.getBMI()
            let color = calculatorM.getColor()
            let advice = calculatorM.getAdvice()
            
            calVC.bmi = bmi
            calVC.advice = advice
            calVC.color = color
        }
        
        
        
        
    }
    
}//End Of The Class

