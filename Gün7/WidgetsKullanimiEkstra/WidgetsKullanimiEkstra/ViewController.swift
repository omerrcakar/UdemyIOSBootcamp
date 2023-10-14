//
//  ViewController.swift
//  WidgetsKullanimiEkstra
//
//  Created by ÖMER  on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(format: "%.1f", slider.value)
        labelStepper.text = String(format: "%.0f", stepper.value)
        
        indicator.isHidden = true
    }

    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func gösterMetot(_ sender: Any) {
        print("Slider durum : \(slider.value)")
        print("Stepper durum : \(stepper.value)")
    }
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(format: "%.0f", sender.value)
    }
    
    
    @IBAction func baslaButton(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func durButton(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
}

