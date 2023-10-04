import UIKit

/*
 
 
 // Composition
 
 class Yonetmeler{
 var yonetmen_id:Int?
 var yonetmen_ad:String?
 
 init(yonetmen_id:Int, yonetmen_ad:String){
 self.yonetmen_id = yonetmen_id
 self.yonetmen_ad = yonetmen_ad
 }
 }
 
 class Kategoriler{
 
 var kategori_id:Int?
 var kategori_ad:String?
 
 init(kategori_id:Int, kategori_ad:String){
 self.kategori_ad = kategori_ad
 self.kategori_id = kategori_id
 }
 
 }
 
 class Filmler{
 var film_id:Int?
 var film_ad:String?
 var film_yıl:Int?
 var kategori:Kategoriler?
 var yonetmen:Yonetmeler?
 
 init(film_id:Int,film_ad:String,film_yıl:Int,kategori:Kategoriler,yonetmen:Yonetmeler){
 self.film_id = film_id
 self.film_ad = film_ad
 self.film_yıl = film_yıl
 self.yonetmen = yonetmen
 self.kategori = kategori
 }
 
 }
 
 
 
 let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
 let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
 
 let y1 = Yonetmeler(yonetmen_id: 1, yonetmen_ad: "Quietin Tarantino")
 let y2 = Yonetmeler(yonetmen_id: 2, yonetmen_ad: "Christoper Nolan")
 
 
 let f1 = Filmler(film_id: 1, film_ad: "Django", film_yıl: 2013, kategori: k1, yonetmen: y1)
 let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_yıl: 2014, kategori: k1, yonetmen: y2)
 
 print("Film id : \(f1.film_id!)")
 print("Film ad : \(f1.film_ad!)")
 print("Film yıl : \(f1.film_yıl!)")
 print("Film kategori : \(f1.kategori!.kategori_ad!)")
 print("Film yonetmen : \(f1.yonetmen!.yonetmen_ad!)")
 
 print("------------------------------------")
 print("Film id : \(f2.film_id!)")
 print("Film ad : \(f2.film_ad!)")
 print("Film yıl : \(f2.film_yıl!)")
 print("Film kategori : \(f2.kategori!.kategori_ad!)")
 print("Film yonetmen : \(f2.yonetmen!.yonetmen_ad!)")
 
 
 
 
 
 
 
 
 
 
 // Kalıtım - Inheritance
 
 
 class EvcilHayvan{
 var cinsiyet:String?
 
 func sesCikar(){
 print("Ses Çıkarma")
 }
 
 init(cinsiyet:String){
 self.cinsiyet = cinsiyet
 }
 }
 
 class Kopek:EvcilHayvan{
 var kopek_ad:String?
 
 init(kopek_ad: String,cinsiyet:String) {
 self.kopek_ad = kopek_ad
 super.init(cinsiyet: cinsiyet)
 }
 
 override func sesCikar() {
 print("Hav Hav")
 }
 
 }
 
 class Kedi:EvcilHayvan{
 
 var kedi_ad:String?
 
 init(kedi_ad: String,cinsiyet:String) {
 self.kedi_ad = kedi_ad
 super.init(cinsiyet: cinsiyet)
 }
 
 override func sesCikar() {
 print("Miyav Miyav")
 }
 
 }
 
 let kopek1 = Kopek(kopek_ad: "Paşa", cinsiyet: "Golden")
 let kedi1 = Kedi(kedi_ad: "Minnoş", cinsiyet: "Tekir")
 
 
 print("Kopek: \(kopek1.kopek_ad!) , cinsiyet : \(kopek1.cinsiyet!)")
 print("Kedi: \(kedi1.kedi_ad!) , cinsiyet : \(kedi1.cinsiyet!)")
 
 kopek1.sesCikar()
 kedi1.sesCikar()
 
 
 // Tip dönüşümleri
 
 // upcasting , alt sınıftan üst sınıfa
 var evcilHayvan = Kopek(kopek_ad: "Buz", cinsiyet: "Sibirya") as EvcilHayvan
 
 // downcasting , üst sınıftan alta
 
 var kedi = EvcilHayvan(cinsiyet: "Erkek") as? Kedi
 
 // tip control
 
 if evcilHayvan is EvcilHayvan{
 print("evcil hayvan tipinde")
 }else{
 print("değil")
 }
 
 
 
 
 
 // Protocol , 2 sayfa arasında iletişim kurma
 // does not conform protocol hatası alırız kullanmazsak eğer
 
 
 protocol MyProtocol{
 var degisken:Int {get set} // get değer atama , set değer okuma
 
 func metot1()
 func metot2() -> String
 }
 
 class myClass:MyProtocol{
 var degisken: Int = 10
 func metot1() {
 print("metot1 çalıştı")
 }
 func metot2() -> String {
 return "metot2 çalıştı"
 }
 }
 
 var a = myClass()
 print(a.degisken)
 a.metot1()
 print(a.metot2())
 
 
 
 
 
 // Extension , var olan sisteme ekleme yapmak
 
 extension Int{
 func carp(sayi:Int)-> Int{
 return self * sayi
 }
 }
 
 let x = 3.carp(sayi: 5)
 print(x)
 
 */

// Closure


