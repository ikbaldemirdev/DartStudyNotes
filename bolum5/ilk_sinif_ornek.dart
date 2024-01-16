// Nesne yönelimli programlamaya giriş 

/* 
* Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir.
* İstediğimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
*
*Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
* Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
*
* Sınıf eğer uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
*
*/

void main(List<String> args) {
  // int sayi =5; nesne oluşturma bu kadar basit aslında
  Ogrenci emre = Ogrenci(); // emre değişkeni oluşturdum ve sonra sınıfı () ile ekledim ki bilgileri emreye gitsin
  emre.ogrAd = "Emre altunbilek"; // . ile verilere atama yapabiliriz.
  emre.ogrNo = 916; // emre bir nesnedir 
  emre.aktifMi = true;
  // Ogrenci hasan = Ogrenci();
  // var kemal = Ogrenci();
  // dynamic yunus = Ogrenci(); bu şekilde de nesne oluşturabiliriz.
}

class Ogrenci { // Sınıf böyle oluşur. Sınıf adları genellikle büyük harfle başlar.
// bu verilere de instance variables denir. 
  int? ogrNo;
  String? ogrAd = "";
  bool? aktifMi =true;

  void dersCalis() {  // sınıfın içine fonksiyon oluşturdum fonksiyonda denir method da denir.
    print("Öğrenci ders çalışıyor");
  }
}