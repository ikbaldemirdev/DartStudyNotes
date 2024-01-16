/*
SORU 1: parametre olarak 1 tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

Soru 2: Daire alanını hesaplayan fonksiyonu yazınız . PI sayısı opsiyonel olmalı Eğer Pi sayısı verilmediyse
varsayılan olarak 3,14 olarak hesaplama yapın 

SORU 3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız. 
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu ekrana yazdırsın.
geriye bir değer döndürmesin. 
 */

void main(List<String> args) {
  int toplam =ciftSayilarinToplami(90);
  print("Toplam $toplam");

  double alan = daireAlaniHesaplama(8);
  print("Alan : $alan");

  ucgeninCesidiniSoyle(birinciKenar: 4, ikinciKenar: 4, ucuncuKenar: 8);
}

int ciftSayilarinToplami(int sayi1){
  int toplam =0;

  for(int i=0; i<sayi1; i++){
    if(i%2==0){
      toplam = toplam+i;
    }
  }
  return toplam;
}

double daireAlaniHesaplama(double yaricap, [double piSayisi=3.14]){
  return yaricap*yaricap*piSayisi;
}

void ucgeninCesidiniSoyle({int birinciKenar=1, int ikinciKenar=1, int ucuncuKenar=1}){
  if(birinciKenar==ikinciKenar && ikinciKenar==ucuncuKenar){
    print("Bu üçgen eşkenar üçgendir.");
  }else if(birinciKenar==ikinciKenar || birinciKenar==ucuncuKenar || ikinciKenar==ucuncuKenar){
    print("Bu üçgen ikizkenar üçgendir.");
  }else{
    print("Bu üçgen çeşitkenar üçgendir.");
  }
}
