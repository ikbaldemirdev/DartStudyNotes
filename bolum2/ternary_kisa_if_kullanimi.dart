/*
ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılabilir. Kullanımı :
koşul ? expression1 : expression2 
eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır. 

kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilir.
expression1 ?? expression2 
burda null expression1 eğer nul değilse kullanılır , eğer null ise expression2 kullanılır .
*/

void main(List<String> args) {
  int sayi1 = 17;
  int sayi2 = 9;
  int kucukSayi;

  /* if(sayi1 < sayi2){
    kucukSayi = sayi1;
  }else{
    kucukSayi= sayi2;
  } */

  //sayi1<sayi2 ? kucukSayi = sayi1 : kucukSayi=sayi2; // kısa if de "?" if yerine geçer ":" ise else yerine geçer 
  kucukSayi = sayi1<sayi2 ? sayi1 :sayi2;

  print("küçük sayı $kucukSayi");

  String? ad = null; // bir değişkenin null değer olup olmadığını başına "?" koyarak anlarız uyarırız sistemi null olabilir deriz.
  String? soyad = "demir"; 
  String? mesaj;

  mesaj = ad ?? soyad;    //'??' iki tane soru işareti baştaki null değilse onu yazdır nullsa diğerini yazdır demek.
  print("Merhaba $mesaj"); // ?? ile değikenlerşn null değerde olup olmadığını kontrol ettim .
}