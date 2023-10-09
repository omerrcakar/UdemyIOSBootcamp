//
//  ViewController.swift
//  gunbesdersbir
//
//  Created by ÖMER  on 8.10.2023.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        // self.navigationItem ifadesi, mevcut görünüm denetleyicisinin (view controller) gezinme öğesine (navigation item) erişim sağlar.
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yr1")!,
                                          .font: UIFont(name: "Pacifico-Regular", size: 22)! ]
        // UINavigationBarAppearance sınıfından bir nesne oluşturulur. Bu nesne, gezinme çubuğunun görünümünü özelleştirmek için kullanılır.
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        
    }


}

