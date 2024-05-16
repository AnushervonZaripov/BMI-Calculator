//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anushervon Zaripov on 12/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String{
        bmi?.advice ?? "boo"
    }
    func getColor() -> UIColor {
        bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height: Float, weight: Float){
        var bmiValue = weight / (height * height)
        //bmi = BMI.init(value: bmiValue, advice: "b", color: .red)
        if bmiValue < 18.5 {
            bmi = BMI.init(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI.init(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        }else {
            bmi = BMI.init(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
   
    
}
