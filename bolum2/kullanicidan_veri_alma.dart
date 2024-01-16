import 'dart:io';  // readline komutunun çalışması için bu kütüphanenin import edilmesi gerekiyor

void main(List<String> args) {
  print("adınızı giriniz");
  String? isim = stdin.readLineSync();  // kullanıcıdan veri almak için yazdığımız komut
  print("Girilen isim $isim");

  print("yaşınızı giriniz");    // int veri girmez hep string algılanır bunu pars methodu ile inte dönüştürürüz
  int? yas = int.parse(stdin.readLineSync()!);  // buradaki ünlem işareti burası null olmayacak çalıştır demek  
  yas = yas +5;
  print("Girilen yas $yas");
}