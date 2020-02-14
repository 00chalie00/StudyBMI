//
//  CalculatorM.swift
//  BMI Calculator
//
//  Created by formathead on 2020/02/12.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorM {
    
    var bmi:BMI?
    
    func getBMI() -> String {
        guard let bmi = bmi?.bmi else { return "0.0"}
        let returnBMI = String(format: "%.1f", bmi)
        
        return returnBMI
    }
    
    func getColor() -> UIColor {
        guard let color = bmi?.color else { return UIColor.white }
        
        return color
    }
    
    func getAdvice() -> String {
        guard let advice = bmi?.advice else { return "NO Advice" }
        
        return advice
    }
    
    mutating func bmiCalculate(height: Float, weight: Float) {
        let resultBMI = weight / pow(height, 2)
        
        if resultBMI < 18.5 {
            bmi = BMI(bmi: resultBMI, color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1) , advice: "please more EAT!")
        } else if resultBMI < 24.5 {
            bmi = BMI(bmi: resultBMI, color: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), advice: "Nice !!!")
        } else {
            bmi = BMI(bmi: resultBMI, color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), advice: "Please more exercise")
        }
    }
    
}//End Of The Struct
