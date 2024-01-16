/*
* Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine büyüyen listeleri kullanırız.
* Bu listelere varsayılan olarak boyut vermemiz gerekmez .
* Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
* add eleman ekler,
* clear tüm elemanları siler,
* remove verilen elemanı siler,
* removeAt belirtilen indexteki elemanı siler
* Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.                          
*/

void main(List<String> args) {
  List<int?> sayilar = []; //Büyüyen list en kolay bu şekilde oluşturulur. uzunluğu kafadan değer veriesek null için
  sayilar.add(1);     // Büyüyen listelerde eklemeyi bu şekilde yaparız.    soru işareti koyarız
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);
  print(sayilar.length);
  sayilar.length = 100;
  
  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable: true); // büyüyen listeler için sabit boyutlu liste oluşturup
  sayilar3.add(55); // growable özlleiğini true yapıp ekleme yapabiliriz. 
  print(sayilar3);
  print(sayilar3.length);

  List<int> sayilar4 = List.empty(growable: true);  // list 4 ve 5 in farkı yok aslında aynısı
  List<int> sayilar5 = [];

  print(sayilar4+sayilar5);
}