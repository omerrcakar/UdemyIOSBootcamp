//
//  ViewController.swift
//  Odev3
//
//  Created by ÖMER  on 9.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Yeni bir UIFont örneği oluşturun
        let customFont = UIFont(name: "YoungSerif-Regular", size: 18) // Yeni fontun adı ve boyutunu belirleyin
        
        loginLabel.font = customFont
        
        self.navigationItem.title = "Login"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.titleTextAttributes = [.font: UIFont(name: "YoungSerif-Regular", size: 18)! ]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        // username için
        
        // Sol köşesine bir resim eklemek için UIView nesnesi oluşturun
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 17, height: 17)) // İstediğiniz boyutu ayarlayabilirsiniz
        
        
        // Görseli oluştur
        let imageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 17, height: 17))
        imageView.image = UIImage(named: "person") // Görselin adını ve türünü doğru şekilde belirtin
        
        
        // UIImageView'ı UIView'a ekleyin
        leftView.addSubview(imageView)
                
        // UIView'ı UITextField'ın leftView özelliğine atayın
        usernameTextField.leftView = leftView
        usernameTextField.leftViewMode = .always // .never kullanarak görseli gizleyebilirsiniz
        
        
        // UITextField'ın leftView özelliğine atanacak olan özel bir içeriği oluşturmaktı. leftView özelliği, UIView türünde bir nesneyi kabul eder. Bu nedenle, resmi eklemek için bir UIImageView'i doğrudan leftView özelliğine atayamayız. Bunun yerine, UIImageView'i içeren bir UIView nesnesi oluşturup bu UIView nesnesini leftView özelliğine atamamız gerekmektedir.
        
        // Yani, UIView kullanmamızın temel nedeni, leftView özelliğine bir resim eklemek için UIImageView'i bir UIView içine yerleştirme gereksinimiydi.
        
        
        
        // password için
        
        
        // Sol köşesine bir resim eklemek için UIView nesnesi oluşturun
        let leftViewP = UIView(frame: CGRect(x: 0, y: 0, width: 17, height: 17)) // İstediğiniz boyutu ayarlayabilirsiniz
        
        
        // Görseli oluştur
        let keyimageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 17, height: 17))
        keyimageView.image = UIImage(named: "key") // Görselin adını ve türünü doğru şekilde belirtin
        
        
        // UIImageView'ı UIView'a ekleyin
        leftViewP.addSubview(keyimageView)
                
        // UIView'ı UITextField'ın leftView özelliğine atayın
        passwordTextField.leftView = leftViewP
        passwordTextField.leftViewMode = .always // .never kullanarak görseli gizleyebilirsiniz
        
    }


}

