//
//  SecondViewController.swift
//  calismaYapisi
//
//  Created by ÖMER  on 11.10.2023.
//

import UIKit

class SecondViewController: UIViewController {

    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let m = kisi{
            print("Ad: \(m.ad!)")
            print("Yas: \(m.yas!)")
            print("Boy: \(m.boy!)")
            print("Bekar: \(m.bekar!)")
        }
        
    }
    

    @IBAction func geriButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
