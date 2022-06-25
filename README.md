## BMI Calcultator
Aplicação para calcular IMC

## Motivação
Aprender novos recursos na construção de aplicativos em IOS e reforçar os anteriores

## Feature
- Aprendi o uso do [NumberFormatter](https://developer.apple.com/documentation/foundation/numberformatter) 
- Essa classe e ideal para formatar números, exemplo currency
- Aprendi o uso de [pow](https://developer.apple.com/documentation/foundation/1779833-pow) para elevar números a potência
- Tem muitos exemplos de operadores [matemáticos](https://developer.apple.com/documentation/kernel/math)
- Aprendi um método para formatar usando string

```swift
formater.maximumFractionDigits = 2
formater.numberStyle = .currency
let valueFormated = formater.string(from: sender.value as NSNumber)
print(valueFormated!)

weight / pow(height, 2)

String(format: "%.2f", sender.value)

```


## 

- Aprendi o uso de segue para transição entre telas, esta categoria de navegação e em pilha, uma tela e colocada sobre a outra
- Para enviar dados a outra tela sobrescrevemos o método prepare 
- Ideal verificar o identificador do segue, porque  evitamos efeitos colaterais quando possuímos muitas telas
- Identificador e nome que demos a nossa classe no custom em UIViewController
- Eu consigo  capturar as propriedades do slider referenciando com IBOutlet, assim não preciso criar variavies extras para armazenar valor real do slider
- Para retornar posso usar dismiss
- Para navegar uso do performSegue
- Toda classe UIViewController tem acesso as suas propriedades idêntico ao label tem acesso ao text. Abaixo usei para pintar a tela

```swift
  //ResultViewController
  
      override func viewDidLoad() {
        super.viewDidLoad()
        labelResultsBMI.text = BMIcalculte
        adviceLabel.text = BMIadvice
        view.backgroundColor = BMIcolor
    }
    

  
  //CalculaterViewController
    @IBOutlet weak var sliderTextHeight: UISlider!
    @IBOutlet weak var sliderTextWeight: UISlider!
  
   self.performSegue(withIdentifier: "goToResult", sender:self)
 
   override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "goToResult" {
            let destionVc = segue.destination as! ResultsViewController
            destionVc.BMIcalculte = String(format: "%.2f", calculatorBrain.getBMIValue())
            destionVc.BMIcolor = calculatorBrain.getBMIColor()
            destionVc.BMIadvice = calculatorBrain.getBMIAdvice()
        }
        
    }


```
