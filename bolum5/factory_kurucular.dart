void main(List<String> args) {
  // Ogrenci emre = Ogrenci(5, "Emre");
  // Ogrenci hasan = Ogrenci.idSiz("İkbal");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "Ayse");

  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı.");
  }

  Ogrenci.idSiz(this.isim){
    print("İsimlendirilmiş kurucu çalıştı.");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) { // Nesne üretip kullanabiliyoruz diğerlerinden farkı değer 
    if (id < 0 ) {                                     // döndürebiliyorum. factory birde methoddur.
      return Ogrenci(5, isim);
    }else 
    return Ogrenci(id, isim);
  }

}
