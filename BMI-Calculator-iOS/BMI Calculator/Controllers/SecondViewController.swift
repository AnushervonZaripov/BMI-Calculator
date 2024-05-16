//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Anushervon Zaripov on 07/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = bmiValue 
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        view.addSubview(label)
        view.backgroundColor = .blue
    }
}
