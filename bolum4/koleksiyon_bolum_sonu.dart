/*
*SORULAR 
*/

//import 'dart:io';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 1- Şehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.

  List<String> sehirler =List.filled(4, "");
  sehirler[0]=("Aydin");
  sehirler[1]=("Muğla");
  sehirler[2]=("Denizli");
  sehirler[3]=("Manisa");
  
  for(int i=0; i<sehirler.length; i++){
    print(sehirler[i]);
  }

  // 2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek
  //sayısını , ram miktarını ve ssd olup olmadığı bilgisini tutun ve ekrana yazdırın.
  
  Map<String, dynamic> bilgisayarBilgi = {"İşlemci sayisi": 4, "ram miktari": 8, "SSD var mi?": true };
  
  print("Bilgisayar bilgileri:");
  for(var oankiEntry in bilgisayarBilgi.entries){
    print(" ${oankiEntry.key} : ${oankiEntry.value}");
  }

  // 3- Her bir elemanında keyleri string, valuleri dynamic map olan bir liste olusturun.
  //Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
  //Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
  //Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı :10(değerler rastgele olabilir.)

  List<Map<String,dynamic>> iller = <Map<String,dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = <String,dynamic>{};
  eklenecekSehir2['il_adi'] = 'bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;

  var eklenecekSehir3 = <String, dynamic> {}; // kısa olsun diye var örneğini yaptık.
  eklenecekSehir1['il_adi'] = 'istanbul';
  eklenecekSehir1['ilce_adi'] = 16;
  eklenecekSehir1['plaka_kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({
    'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35
  });

  for(int i =0; i< iller.length; i++ ){
    var oankiSehirMapYapisi = iller[i];
    print(
      "Listenin ${i+1}. elemaninda bulunan sehir adi: ${oankiSehirMapYapisi['il_adi']} ilce "
      "sayisi : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu: ${oankiSehirMapYapisi
      ['plaka_kodu']} ");
    
  }





  // 4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50 ye rastgele şekilde olusturulsun 
  //Bu elemanları tek bir listeye aktarın 
  //Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.

  List<int> listOne = List.filled(5, 9);
  var listTwo = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  Set<int> sonSetYapisi = <int> {};

  for(int i =0; i<5; i++){
    listOne[i] = Random().nextInt(50);
    listTwo[i] = Random().nextInt(50);
  }

  print(listOne);
  print(listTwo);

  sonListe= [...listOne, ...listTwo];
  print(sonListe);

  for(int gecici in sonListe){
    sonSetYapisi.add(gecici*gecici);
  }

  print(sonListe);
  print(sonSetYapisi);
  

  // 5- Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun kullanıcı 0 değerini girdiğinde girilen 
  //sayıların ortalamasını yazdırın. 

  int girilenNot = 0;
  List<int> girilenNotlar=<int>[];
  do{
    print("Lütfen notunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!); 
    if(girilenNot != -1){
      girilenNotlar.add(girilenNot);
    }
  }while(girilenNot != -1);

  print("Kaç tane not girildi: ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniToplaminiBul(girilenNotlar);
  print("Notların ortalaması $ortalama");
  


}

double listeninOrtalamasiniToplaminiBul(List<int> liste) {
  int toplam = 0;
  for(int i=0; i<liste.length; i++){
    toplam = toplam + liste[i];
  }

  return toplam/ liste.length;

}