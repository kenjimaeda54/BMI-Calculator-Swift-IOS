//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by kenjimaeda on 25/06/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    //se nao determinar que o tipo e float fara erro porqeu imagina que e Double
    //swift existe um metod para lidar com propriedades opcionais
    //classe?.opcional -> identico ao javascript,se existir mostra opcional,caso acontraio nao acontece nada
    //https://docs.swift.org/swift-book/LanguageGuide/OptionalChaining.html
    
    //tambem ele existe operador de consciencia nulla ??
    //se primerio for verdadeiro ?? nao mostra segudno
    //https://developer.apple.com/documentation/swift/__(_:_:)-8buau
    var bmi: Float = 0.0
    
   mutating func calculateBMI(_ height:Float,_ weight:Float) -> Void {
       bmi =  weight / pow(height, 2)
    
    }
    
    func getBMIValue() -> Float {
        return bmi
    }
    
}
