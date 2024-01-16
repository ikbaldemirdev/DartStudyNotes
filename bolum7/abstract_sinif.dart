/* 
* Abstract soyut sınıf : Sınıflar arasında soyutlama yapmak için kullanılır.
* Abstract sınıflandırma nesne üretilmez , abstract sınıflarda normal ve abstract methodlar olur.
* Abstract methodlar alt sınıflarca override edilmek zorundadır.

* Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
*/
void main(List<String> args) {
  Sekil s1 = Kare(9);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(4, 5);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
  
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil { // eğer bu sınıf soyutsa nesne oluştumakk istemiyosam abstract methodunu kullanırım
  double alanHesapla(); // bu sayade fonksiyonlaralada işlem yapmama gerek kalmaz parametre isterse girerim.
  double cevreHesapla();
  void selamla() {
    print("Ben şekil sınıfındayım");
  }
}

class Kare extends Sekil {

  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar*kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben kare sınıfınfayım");
  }
  
}

class Dikdortgen extends Sekil {
  int kenar1;
  int kenar2;

  Dikdortgen(this.kenar1, this.kenar2);
  @override
  double alanHesapla() {
    return kenar1* kenar2.toDouble();
  }

  @override
  double cevreHesapla() {
    return (kenar1+kenar2)*2.toDouble();
  }

  @override
  void selamla() {
    print("Ben dikdörtgen sınıfındayım.");
  }

}