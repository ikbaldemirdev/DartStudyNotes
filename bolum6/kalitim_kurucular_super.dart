

void main(List<String> args) {
  Asker emre = Asker("İkbal", 24);
  Er hasan = Er("Ali", 32);
  hasan.selamla();
  emre.selamla();
  hasan.memleketDegistir("BUrsa");
  hasan.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) { // kesinlikle askerle ilgi bilgi alırkenn ad ve yaşı gir
    print("Asker sınıfının kurucusu çalıştı.");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas):super(ad, yas) { // super yazıp parantez açınca üst sınıfımın contractına erişiyorum.
    print("Er sınıfının kurucusu çalıştı."); // superin asıl amacı üst üretildiğim parent sınıfını gitmek .
  }

  void memleketDegistir(String yeniMemleket){
    super.memleket = yeniMemleket; // super yazıp nokta koyduğumda üretildiğim fonks yada değişkenlere erişebilirim

  @override
  void selamla() {
    print("Er sınıfından selamlar");
  }
}
}
