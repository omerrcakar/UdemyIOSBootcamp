//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by ÖMER  on 18.10.2023.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var filmLabel: UILabel!
    @IBOutlet weak var imageFilm: UIImageView!
    @IBOutlet weak var filmFiyat: UILabel!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film{
            
            filmLabel.text = f.ad
            imageFilm.image = UIImage(named: f.resim!)
            filmFiyat.text = "\(f.fiyat!) ₺"
            
        }
    }
    

    

}
