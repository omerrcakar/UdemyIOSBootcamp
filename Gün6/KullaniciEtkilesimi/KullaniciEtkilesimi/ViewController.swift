//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by ÖMER  on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        let iptalButton = UIAlertAction(title: "İptal", style: .cancel){ action in
            print("İptal butonuna basıldı")
        }
        alert.addAction(iptalButton)
        
        
        let tamamButon = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam butonuna basıldı")
        }
        alert.addAction(tamamButon)
        
        
        self.present(alert, animated: true)
    }
    
    
    
    @IBAction func actionButton(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalButton = UIAlertAction(title: "İptal", style: .cancel){ action in
            print("İptal butonuna basıldı")
        }
        alert.addAction(iptalButton)
        
        
        let tamamButon = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam butonuna basıldı")
        }
        alert.addAction(tamamButon)
        
        
        self.present(alert, animated: true)
    }
    
    
    @IBAction func customAlertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
    
        // textfield ekliyoruz 1.
        alert.addTextField{ textField in
            textField.placeholder = "Kullancı Adı"
        }
        
        // 2. text field
        alert.addTextField{ textField in
            textField.placeholder = "Şifre"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        
        let tamamButon = UIAlertAction(title: "Tamam", style: .destructive){ action in
            let tf = alert.textFields![0] as UITextField
            let tf1 = alert.textFields![1] as UITextField
            
            if let alinanVeri = tf.text , let alinanVeri1 = tf1.text{
                print("Kullanıcı adi : \(alinanVeri) - Şifre : \(alinanVeri1)")
            }
            
        }
        alert.addAction(tamamButon)
        
        
        self.present(alert, animated: true)
    }
    
}

