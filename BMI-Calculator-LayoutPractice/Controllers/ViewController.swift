//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var sliderTextHeight: UISlider!
    //dessa maneira nao preciso de uma variavel global,aqui ja consigo o valor do slider
    @IBOutlet weak var sliderTextWeight: UISlider!
    
    var BMI: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleSliderHeight(_ sender: UISlider) {
        //melhor maneira de converter numberos em swift
        // https://forums.swift.org/t/rounding-float-to-two-decimal-places/27904/2//        let formater = NumberFormatter()
        //        formater.maximumFractionDigits = 2
        //        formater.numberStyle = .currency
        //        let valueFormated = formater.string(from: sender.value as NSNumber)
        //        print(valueFormated!)
        
        //maneira pratica e usando o String
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func handleSliderWeight(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
    }
    @IBAction func handleCalculate(_ sender: UIButton) {
        //po e a quantidade de casa a multiplar o numero
        //se for 3 seria 2 x 2 x 2
        BMI = sliderTextWeight.value / pow(sliderTextHeight.value, 2)
        print(BMI)
    }
    
}

