/*
Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay 
Uygulamlar geliştirebiliriz.

Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları 
methodlara bölmemiz gerekir.
Bunun için method veya foksiyon oluşturabiliriz.

Methodlar parametre alabilir veya herhangi bir parametreye sahip olabilir.
Methodlar geriye bir değer döndürebilir. değer döndürmeyen method tanımlarının başına void yazılır .
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir yani belirtmek zorunda değiliz.(Belirtilmesi önerilir.)

*/

void main(List<String> args) {
  cevreyiHesapla();
 int sonuc = alanHesapla(6, 8);
 print("alan $sonuc");
 int hacim = hacimHesapla(8, 9, 10);
 print("hacim: $hacim");
 print(hacimHesapla(4, 8, 10)); // üsttekinin kısayolu .
}
// Parametresiz fonksiyon // Fonksiyon budur değişkenlerden büyük farkı sonunda parantez vardır.
void cevreyiHesapla(){  // değer döndürmeyen fonk başına void yazarız  
  int en = 5, boy =10;
  int cevre = (boy+en)*2;
  print("Çevre $cevre");
}
// Parametre alan fonksiyon
int alanHesapla(int sayi1, int sayi2){  // fonksiyon başına hangi türde değer döndürürse onu yazmak iyi olur int gibi.
  //print("alan ${sayi1*sayi2}");         // fonksiyonlu parametre bu oluyor istediğim ismi veririm.  
  return sayi1* sayi2 ;     // return şu demek maindeki alan hesapla fonksi geri değer döndürmesi.
}

hacimHesapla(int en, boy, yukseklik){
   return en* boy* yukseklik; 
}