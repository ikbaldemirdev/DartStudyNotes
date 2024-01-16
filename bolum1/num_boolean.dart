/*


*/

void main(List<String> args) {
  int yas=24;
  print(yas);
  yas = 26;
  print(yas);

  num yil =1988;
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo =77.5.toInt();
  print(kilo);

  var sayi2 =56;      // sayı değişkenlerinin yerine kolayca kullanılabilir.
  sayi2=52;
  print(sayi2);

  int numara;        // null değer alıyor
  numara=9; 
  print(numara);

  double? s1 =null;   // değişkenden sonraki soru işareti null değer gelebileceğini anlatıyor.
  print(s1);             // eğer null değerle işlem yapmak istersen hata verir.

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);



}