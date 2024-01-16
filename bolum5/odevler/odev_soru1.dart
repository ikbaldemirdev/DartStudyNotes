/*
* Soru1 : CemberDaire isimli sınıf oluşturun BU sınıfın yarıçap alan kurucusu olmalı . Ayrıca cevre ve alanını 
hesaplayan metotlar olmalı (Pi sayısı 3,14 alın )
*/


import 'cember_daire.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(-5);
  print("Çevre: ${c1.cevreHesapla()}");
  print("Alan: ${c1.alanHesapla()}");
}

