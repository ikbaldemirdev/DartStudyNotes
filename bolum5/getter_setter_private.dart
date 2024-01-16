/*
* private değişken ve fonksiyonlar : Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz .
Bu durumlarda _ işareti ile bunları saklarız.
*
* getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
* Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda 
okumasını sağlamaktadır. 
*
*setter metotlar : sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış
dünyanın erişimine kapatılan değişkenlere veri atamaktır. ayrıca veri ataması yapılırken gerekli olan kontrollerin 
ve işlemlerin yapılması için kullanılır.
*/

import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(955);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 953;
  print(m1.musteriNoSoyle);

  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  db.baglan();

  
  bool sonuc = db.baglan();
  if(sonuc) {
    print("Bağlandım");
  }else{
    print("Bağlanamadım");
  }
}