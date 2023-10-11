//
//  ViewController.swift
//  widgetsKullanimi
//
//  Created by ÖMER  on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedMy: UISegmentedControl!
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        if let alinanVeri = textfield.text{
            labelText.text = alinanVeri
        }
        
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn{
            print("Switch : On")
        }else{
            print("Switch : Off")
        }
    }
    
    
    
    @IBAction func gösterClicked(_ sender: Any) {
        print("Switch: \(mySwitch.isOn)")
        
        let selectedIndex = segmentedMy.selectedSegmentIndex
        let secilenKategori = segmentedMy.titleForSegment(at: selectedIndex)
        
        print("Sonuc: \(secilenKategori!)")
        
    }
    
    
    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        
        let selectedIndex = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: selectedIndex)
        
        print("Sonuc: \(secilenKategori!)")
    }
    
}

