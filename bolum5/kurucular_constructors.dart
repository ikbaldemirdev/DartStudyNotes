/* Kurucu Methodlar - CONSTRUCTORS
* 
* Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek
oluşturabilir nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.

* Farklı türde kurucu oluşturabiliriz
* 1- Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
* Ogrenci emre =new Ogrenci() dediğimizde aslında default kurucu çalışır.
* Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci () {} şeklinde tanımlı boş bir
methoddur. 
* İstersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
* Kurucu methodların geri dönüş tipi olmaz.

* 2- Parametreli Kurucu Method: Aslında default constructorın parametre almış haline denir.
* Ogrenci emre = new Ogrenci("emre");

* Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.

* 3- Named (İsimlendirilmiş) : Sınıf içerisinde 
SinifAdi.methodAdi(){
  buraya kodlar gelir.
}
// İstediğiniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz.

*/

void main(List<String> args) {
  Araba nissan = Araba(1999, "Nissan", false); // bunu dediğimiz an kutu oluşur nesneler ile özelliklerin girilmesi beklenir.
  /* nissan.marka="Nissan GTR Skyline R34";
  nissan.modelYili=1999; // nesneler ile özellikler girilir.
  nissan.otomatikMi=false; */
  nissan.bilgileriSoyle(); // fonksiyon ile yada method adı farketmez aynısı söylenmek yapılmak istenen yapılır.
  nissan.modelYili=1997;
  nissan.bilgileriSoyle();

  var reno = Araba(2019, "reno", true);
  reno.bilgileriSoyle();

  var bmw = Araba(2021, "bmw", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  // var citroen = Araba.markasizKurucuMetot(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");

  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba { //Sınıf oluşturuken süslü parantez koyarız başka bişi değil
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /* Araba() {
    print("kurucu method tetiklendi");
  } */

  Araba( this.modelYili, this.marka, this.otomatikMi) {
    print("kurucu method tetiklendi");
  }

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);  // isimlendirilmiş kurucu metotlar burada amacımız
  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) { // özel metotlar oluşturmak istediğimiz kadar
    this.otomatikMi = otomatikMi; // oluşturabiliriz. model yılını girmek istemedik mesela böyle metot oluşturma-
    this.marka = marka; // lıyız.
  }

  /* /* Araba(int yil, String m, bool o) {
    print("kurucu method tetiklendi");
    this.modelYili =modelYili; // sınıftaki mi yoksa methodtaki mi onu anlamaya çalışmak için this veririz.
    this.marka = marka;
    this.otomatikMi = otomatikMi; */

    /* modelYili = yil; // eğer ikiside farklı isimde ise this kullanmaya gerek olmaz.
    marka = m;
    otomatikMi = o; */
  } */



  void bilgileriSoyle(){
    print(
      "Arabanin model yili ${modelYili}, markasi: ${marka} otomatik mi: ${otomatikMi}");
  }

  void yasHesapla() { // null olabilir dediğimiz bir değere null değilmiş gibi işlem yaptırmak istiyorsak eğer
    if(modelYili != null)
    print("Arabanın yaşı ${2021 - modelYili!}"); // hemen sağına ! işareti kullanırız.
    else print("Model yılı olmadığından yaş hesaplanamadı");
  }                  
}