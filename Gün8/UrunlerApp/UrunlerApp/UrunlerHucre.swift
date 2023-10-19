//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by ÖMER  on 16.10.2023.
//

import UIKit

protocol HucreProtocol{
    func sepeteEkleTiklandi(indexPath:IndexPath)// indexpath isticez
}

class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var hucreArkaPlan: UIView!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var labelUrunFiyat: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // bu hücredeki butona basınca bunu ana sayfa üzerinde çalıştırmamız ,işlem yapmamız lazım
    // ürün hücrelerden anasayfaya erişim için protocol lazım
    @IBAction func butonSepeteEkle(_ sender: Any) {
        // anasayfadaki o fonksiyonu çalıştırcaz bura ile (tetikleme)
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
}
