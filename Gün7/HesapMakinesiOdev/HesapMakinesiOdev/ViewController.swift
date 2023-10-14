//
//  ViewController.swift
//  HesapMakinesiOdev
//
//  Created by ÖMER  on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    var operation = ""
    var numbers = [Int]()
    var result = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    
    @IBAction func numberButton(_ sender: UIButton) {
        if let numberText = sender.titleLabel?.text{
            operation += numberText
        }
    }
    
    
    
    @IBAction func equalButton(_ sender: Any) {
        
        let withoutPlusNumberArray = operation.split(separator: "+")
        
        for number in withoutPlusNumberArray{
            if let integerNumber = Int(number){
                numbers.append(integerNumber)
            }
        }
        
        for n in numbers{
            result += n
        }
        
        resultLabel.text = "\(result)"
        
    }
    
    
    @IBAction func ACButtonTapped(_ sender: Any) {
        operation = ""
        result = 0
        numbers.removeAll()
        resultLabel.text = "0"
    }
    
}

