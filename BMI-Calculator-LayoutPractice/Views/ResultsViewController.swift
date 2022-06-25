//
//  ResultsViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by kenjimaeda on 24/06/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var labelResultsBMI: UILabel!
    
    var BMIcalculte = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResultsBMI.text = BMIcalculte
    }
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        //retornando a tela
        self.dismiss(animated: true)
    }
    
    
    
    
}
