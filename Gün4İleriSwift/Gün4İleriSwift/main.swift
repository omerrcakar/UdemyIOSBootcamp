//
//  main.swift
//  Gün4İleriSwift
//
//  Created by ÖMER  on 4.10.2023.
//

import Foundation

func kisiTanima(ad:String){
    if ad == "Ahmet"{
        print("Doğru kişi")
    }else{
        print("Yanlis Kisi")
    }
}

kisiTanima(ad: "Ahmet")


// Guard -> false ise çalışır
// if in tersidir

func kisiTanima2(ad:String){
    // mehmete eşit değilse çalışan kısım , eğer sorun çıkarsa return ile fonksiyondan çıkılır
    guard ad == "Mehmet" else{
        print("Tanınmayan Kisi")
        return
    }
    
    // eğer sorun olmazsa
    
    print("Doğru kullanıcı")
}

kisiTanima2(ad: "Ahmet")






// Hata ayıklama
// 1. compile erorr: editör hataları
// 2. runtime error: çalışma sırasında oluşan hatalar
enum Hatalar: Error{
    case sifiraBolunmaHatasi
}


// bu fonksiyonu kullanırken burda hata olabilir try catch kullan demeiz lazım
// throws kullanarak bu fonksiyonun hata oluşturma ihtimali olan fonksiyon oluyor
func bolme(sayi1:Int,sayi2:Int) throws -> Int{
    
    if sayi2 == 0{
        throw Hatalar.sifiraBolunmaHatasi
    }
    return sayi1 / sayi2
}



// bolme fonksiyonunu do içinde try bölümünde deniyor eğer sayı2 0 değilse sorun yoksa işlemi do içinde yapar ve biter , eğer sayi2 0 ise  hatayı yakalar ve hatalar içindekedi sıfıra böğlnmeyi catch de yakalar ve yazdrırır
do{
    let sonuc = try bolme(sayi1: 10, sayi2: 2)
    print(sonuc)
}catch Hatalar.sifiraBolunmaHatasi{
    print("Sifira bölünme hatası")
    
}



// diğer kullanık şekli

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0) // eğer hata olursa sonuc nil olur

if let temp = sonuc1{
    print(temp)
}else{
    print("Sayi sıfıra bölünemez")
}


