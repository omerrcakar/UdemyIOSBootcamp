//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by ÖMER  on 11.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tab bar itemlara erişip değiştirdik
        if let tabItems = tabBarController?.tabBar.items{
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "2"
            ayarlarItem.badgeValue = "New"
        }
        
        
        // tabbar renk değişimi
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemGray
        
        // tabbar item seçili duruma göre renk değişim
        renkDegisim(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegisim(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegisim(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance


    }
    
    func renkDegisim(itemAppearance:UITabBarItemAppearance){
        // seçili durum
        itemAppearance.selected.iconColor = UIColor.white
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // seçili olmayan durum
        itemAppearance.normal.iconColor = UIColor.black
        itemAppearance.normal.badgeBackgroundColor = UIColor.gray
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
    }

        


}

