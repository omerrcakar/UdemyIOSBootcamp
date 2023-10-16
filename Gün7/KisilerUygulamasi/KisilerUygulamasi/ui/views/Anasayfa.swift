//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by ÖMER  on 14.10.2023.
//

import UIKit

class Anasayfa: UIViewController{

    
    @IBOutlet weak var kisilerTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisi_ad: "Ömer", kisi_id: 1, kisi_tel: "1111")
        let k2 = Kisiler(kisi_ad: "Safa", kisi_id: 2, kisi_tel: "2222")
        let k3 = Kisiler(kisi_ad: "Kaan", kisi_id: 3, kisi_tel: "3333")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            // gönderilen kişiyi any den Kisiler tipine dönüştürdük
            if let kisi = sender as? Kisiler{
                let gidilecekYer = segue.destination as! KisiDetay
                // öteki sayfadaki kişiye buradaki gelen kişiyi atadık
                gidilecekYer.kisi = kisi
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya Dönüldü")
    }
    
    


}

extension Anasayfa: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kisi Ara : \(searchText)")
    }
    
}


extension Anasayfa:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // gelen indexe göre gelen kişiyi aldık
        let kisi = kisilerListesi[indexPath.row]
        
        // her bir hücreyi bağladık kişiler hücre sınıfından
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerhucre") as! KisilerHucre
        
        // o hücredeki labellara gelen kişinin değerlerini atıyoruz
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        return hucre
    }
    
    // seçilen hücre
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // seçilen satırdaki kişi özelliklerini alıcak
        let kisi = kisilerListesi[indexPath.row]
        
        // tıklayınca segue
        performSegue(withIdentifier: "toDetay", sender: kisi) // tıklanan kişi yi göndericek diğer sayfaya
        tableView.deselectRow(at: indexPath, animated: true) // seçili kalmayı kaldırdı
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){contextualAction,view,bool in
            let kisi = self.kisilerListesi[indexPath.row]
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) silinsin mi?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){action in
                print("Kisi Sil : \(kisi.kisi_id!)")
                
            }
            alert.addAction(iptalAction)
            alert.addAction(evetAction)
            
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    
}

