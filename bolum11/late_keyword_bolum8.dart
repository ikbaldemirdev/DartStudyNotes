/* 
* Bazen değişkenler veya propertyler non-nullable olmalıdır. ama ilk değer ataması hemen gerçekleşmeyecektir.
bu durumlarda late anahtar kelimesi kullanılır.
* 
* Bir değişkenin önüne late yazdığınızda Darta şunu söylemiş olursunuz 
* 1- Bu değişkene bir değer atama 
* 2- Değeri sonradan atayacaksın
* 3- Bana güven dart , valla bu değişkeni sen okumadan önce initialize edeceğim
*
*Eğer değişkene değer atamadan okumaya çalışırsanız hata alırsınız
*/

class Yemek {
  late final String tanim;
  late final int fiyat;

  Yemek(int fiyat){
    this.fiyat = fiyat;
  }
  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

void main(List<String> args) {
  final yemegim = Yemek(100);
  yemegim.setTanim("Bezelye");
  print(yemegim.tanim);
  print(yemegim.fiyat);
}