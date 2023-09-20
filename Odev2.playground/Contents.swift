import UIKit

class Odev2{
    
    
    func Soru1(km:Double)->Double{
        var mile = km * 0.621
        return mile
    }
    
    func Soru2(kısa:Int,uzun:Int){
        print(kısa * uzun)
    }
    
    
    func Soru3(sayi:Int)->Int{
        
        if sayi < 0{
            return -1
        }else if sayi == 0 && sayi == 1{
            return 1
        }else{
            var f = 1
            
            for sayicik in 2...sayi{
                f *= sayicik
            }
            return f
        }
        
    }
    
    func Soru4( _ kelime:String)-> Int{
        
        if kelime == ""{
            return 0
        }else{
            var sayac = 0
            
            for i in kelime{
                if i == "e" || i == "E"{
                    sayac += 1
                }
            }
            
            return sayac
        }
        
    }
    
    // Swift dilinde fonksiyonlarda parametre isimleri tanımlanırken _ (alt çizgi) kullanılarak, fonksiyon çağrısında parametre isminin kullanılmasının istenmediği anlamına gelir. Yani _ kullanıldığında, o parametrenin ismi çağrıda belirtilmez ve fonksiyonun çağrısı daha okunabilir ve sade hale gelir.
    
    // func eHarfiSay(_ kelime: String) -> Int
    
    // Bu sayede fonksiyon çağrısında kelimenin adını belirtirken parametre adını kullanmamıza gerek kalmaz:
    // let kelime = "Merhaba Dunya"
    // let eHarfiAdedi = eHarfiSay(kelime)
    
    
    // Eğer _ kullanılmasaydı, fonksiyon çağrısında parametre adını da belirtmemiz gerekirdi:
    // let eHarfiAdedi = eHarfiSay(kelime: kelime)
    
    
    
    func Soru5(kenarSayisi:Int) -> Int{
        return ((kenarSayisi - 2 ) * 180)/kenarSayisi
    }
    
    
    func Soru6(günSayisi: Int)-> Int{
        
        var calismaSaati = günSayisi * 8
        
        var ucret = calismaSaati * 40
        
        if calismaSaati > 150{
            ucret = 150 * 40 + (calismaSaati - 150) * 80
        }
        
        return ucret
    }
    
    
    func Soru7(süre:Int)-> Int{
        if süre > 1{
            return 50 + (süre - 1) * 10
        }else{
            return süre * 50
        }
    }
    
    
    
    
}



var odev = Odev2()



print(odev.Soru1(km: 1.2))

odev.Soru2(kısa: 2, uzun: 4)

let sonuc2 = odev.Soru3(sayi: -1)
print(sonuc2)

let eSayisi = odev.Soru4("merhaba")
print(eSayisi)

let icAcı = odev.Soru5(kenarSayisi: 3)
print(icAcı)


var günSonuc = odev.Soru6(günSayisi: 20)
print(günSonuc)

var otopark = odev.Soru7(süre: 2)
print(otopark)

