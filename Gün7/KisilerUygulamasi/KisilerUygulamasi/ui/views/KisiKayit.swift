//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by ÖMER  on 14.10.2023.
//

import UIKit

class KisiKayit: UIViewController {

    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func kisiKaydet(_ sender: Any) {
        // kaydet e basınca önce tf den değerleri aldık sonra fonksiyonumuzdaki yere koyduk
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text{
            kisiKayit(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    
    // 2 değer alıcak burda veritabanı kayıt yapıcaz
    func kisiKayit(kisi_ad: String, kisi_tel:String){
        print("Kisiyi kaydet: \(kisi_ad) - \(kisi_tel)")
    }

}
