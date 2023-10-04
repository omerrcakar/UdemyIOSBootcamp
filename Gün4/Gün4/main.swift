//
//  main.swift
//  Gün4
//
//  Created by ÖMER  on 4.10.2023.
//

import Foundation


// Array yapısı
 var meyveler = [String]()

// veri ekleme
meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")

print(meyveler)

// veri güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)


// Insert - istenilen indexe veri ekleme
meyveler.insert("Portakal", at: 1)
print(meyveler)

// veri okuma
print(meyveler[0])

print(meyveler.count)
print(meyveler.isEmpty)



// dizi içine erişim

for meyve in meyveler{
    print("Sonuc : \(meyve)")
}

// dizi içine erişim (index alarak)
for (i,meyve) in meyveler.enumerated(){
    print("Sonuc \(i): \(meyve)")
}


meyveler.remove(at: 1)
print(meyveler)


// Nesne tabanlı örnek

class Ogrenciler{
    var ad:String?
    var no:Int?
    var sınıf:String?
    
    
    init(ad: String, no: Int, sınıf: String) {
        self.ad = ad
        self.no = no
        self.sınıf = sınıf
    }
    
}


var o1 = Ogrenciler(ad: "Ömer", no: 200, sınıf: "3")
var o2 = Ogrenciler(ad: "Safa", no: 300, sınıf: "3")
var o3 = Ogrenciler(ad: "Huzeyfe", no: 400, sınıf: "3")


var ogrenciListesi = [Ogrenciler]()

ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)


for ogranci in ogrenciListesi{
    print("Ad: \(ogranci.ad!) - No: \(ogranci.no!) - Sınıf : \(ogranci.sınıf!)")
}



// filtreleme  , $0 her bir ogrenci (o1,o2,o3...) nesnesini temsil eder
// f1 de ayrı bir liste ogrenciler tipinde
var f1 = ogrenciListesi.filter({ $0.no! > 200 })
print("Filtreleme 1")
for o in f1{
    print("Ad: \(o.ad!) - No: \(o.no!) - Sınıf : \(o.sınıf!)")
}



var f2 = ogrenciListesi.filter({ $0.ad!.contains("y") && $0.no! > 200})
print("Filtreleme 2")
for o in f2{
    print("Ad: \(o.ad!) - No: \(o.no!) - Sınıf : \(o.sınıf!)")
}


// Sıralama - sorting
// no lar arasında kıyaslama

var s1 = ogrenciListesi.sorted(by: { $0.no! > $1.no!})
print("Filtreleme 3")
for o in s1{
    print("Ad: \(o.ad!) - No: \(o.no!) - Sınıf : \(o.sınıf!)")
}


var s3 = ogrenciListesi.sorted(by: { $0.ad! < $1.ad! })
print("Filtreleme 4")
for o in s3{
    print("Ad: \(o.ad!) - No: \(o.no!) - Sınıf : \(o.sınıf!)")
}





// Set Yapısı

var aylar = Set<String>()

aylar.insert("Şubat")
aylar.insert("Mayıs")
aylar.insert("Ocak")

print(aylar)
print(aylar.count)
print(aylar.isEmpty)

aylar.remove("Şubat")
print(aylar)



// Dictionary Yapısı

var iller = [Int:String]()

// veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"

print(iller[16]!)

// veri güncelleme
iller[16] = "YeniBursa"


for (anahtar,deger) in iller{
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)






