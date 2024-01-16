/*
soru 1: iki notu girilen öğrencinin ortalamsını bularak sonucu ekrana gösteren algoritmayı bulunuz

soru 2: fiyat girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın .
*/

import 'dart:io';

void main(List<String> args) {
  print("ilk notu giriniz");
  int not1 = int.parse(stdin.readLineSync()!);
  print("ikinci notu giriniz");
  int not2 = int.parse(stdin.readLineSync()!);
  double ortalamaNot = (not1+not2)/2;
  print("Not ortamanız : $ortalamaNot");

  print("Ürün fiyatı");
  double fiyat = double.parse(stdin.readLineSync()!);
  double sonFiyat = ((fiyat*18)/100 + fiyat);
  print("Zamlı fiyat $sonFiyat");
  
}