//
//  DetaySayfa.swift
//  UrunlerApp
//
//  Created by ÖMER  on 16.10.2023.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var imageViewUrun: UIImageView!
    
    var urun : Urunler?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let u = urun{
            self.navigationItem.title = u.ad
            imageViewUrun.image = UIImage(named: u.resim!)
            labelUrunFiyat.text = "\(u.fiyat!) ₺"
        }
    }
    

    @IBAction func butonSepeteEkle(_ sender: Any) {
        
        if let u = urun{
            print("Detay Sayfa : \(u.ad!) Sepete eklendi!")
        }
        
    }
    

}
