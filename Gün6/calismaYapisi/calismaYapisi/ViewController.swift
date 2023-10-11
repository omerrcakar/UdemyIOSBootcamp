//
//  ViewController.swift
//  calismaYapisi
//
//  Created by ÖMER  on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() { // ilk çalıştığında 1 kere çalışır
        super.viewDidLoad()
        print("viewDidLoad çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) { // sayfa görüneceği zaman çalışır
        print("viewWillAppear çalıştı")
    }
    
    override func viewWillDisappear(_ animated: Bool) { // sayfa kaybolucağı zaman çalışır
        print("viewWillDisappear çalıştı")
    }

    @IBAction func gecButton(_ sender: Any) {
        let kisi = Kisiler(ad: "Ömer", yas: 22, boy: 1.75, bekar: true)
        performSegue(withIdentifier: "secondVC", sender: kisi)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC"{
            if let k = sender as? Kisiler{
                let destination = segue.destination as! SecondViewController
                destination.kisi = k
            }
        }
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        print("add")
    }
    
    
    
}

