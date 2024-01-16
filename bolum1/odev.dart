/*
SORULAR 
1- adınızı soyadınızı ve yaşınızı farklı değişkelerde saklayıp ekrana "benim adım ikbal demir, yaşım 24 
ve tüm ismimdeki karekterlerin sayısı 10 dur." yazdır

2-bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın 
örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12 dir.
*/

//CEVAPLAR

void main(List<String> args) {
  String isim ="İkbal";
  String soyIsim="Demir";
  int yas =24;

  print("Benim adım $isim $soyIsim yaşım $yas ve ismimdeki karakterlerin toplam sayısı: ${(isim.length) + (soyIsim.length) }");

  int s1 = 3;
  int s2 = 4;
  int s3 = 5;

  print("Birinci kenarı $s1, ikinci kenarı $s2, üçüncü kenarı $s3 olan üçgenin çevresi ${s1+s2+s3}");
}