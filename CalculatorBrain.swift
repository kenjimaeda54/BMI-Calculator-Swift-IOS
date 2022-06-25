//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by kenjimaeda on 25/06/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    //se nao determinar que o tipo e float fara erro porqeu imagina que e Double
    //swift existe um metod para lidar com propriedades opcionais
    //classe?.opcional -> identico ao javascript,se existir mostra opcional,caso acontraio nao acontece nada
    //https://docs.swift.org/swift-book/LanguageGuide/OptionalChaining.html
    
    //tambem ele existe operador de consciencia nulla ??
    //se primerio for verdadeiro ?? nao mostra segudno
    //https://developer.apple.com/documentation/swift/__(_:_:)-8buau
    var bmi: BMI?
    
    mutating func calculateBMI(_ height:Float,_ weight:Float) -> Void {
        let value =  weight / pow(height, 2)
        
        // inicei uma nova struct porque meu foco e deixar os valores internos imutaveis
        if value < 18.5 {
            bmi = BMI(advice: "Eat more pies!", value: value, color: .blue)
        }else if value < 24.9 {
            bmi = BMI(advice: "Fit as a fiddle!", value: value, color: .green)
        }else {
            bmi = BMI(advice: "Eat less pies!", value: value, color: .red)
        }
        
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
}
