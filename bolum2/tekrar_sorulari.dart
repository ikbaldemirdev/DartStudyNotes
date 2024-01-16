/*
SORU 1: 3 tane double değişken oluşturup bunların ortalamsaını yazdıran programı yazdırın.
SORU 2: Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı bulunuz.
SORU 3: Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız.(geçme not alt değeri =50
vizenin %40 finalin %60 ı alınır.)

SORU 4:
SORU 5:
SORU 6:
*/

void main(List<String> args) {
  //Cevap 1:

  double say1 =45;
  double say2 =91;
  double say3 =23;
  double ortalama;

  ortalama=(say1+say2+say3)/3;
  print("Ortalama = $ortalama");

  //Cevap 2:

  int kenar1 = 63;
  int kenar2 = 73;
  int kenar3 = 45;

  if(kenar1==kenar2 && kenar2==kenar3){
    print("Eşkenar Üçgen");
  }else if((kenar1 != kenar2) && (kenar2 != kenar3) && (kenar1 != kenar3)){
    print("Çeşitkenar Üçgen");
  }else{
    print("İkizkenar Üçgendir");
  }


  //CEVAP 3:

  double vizeNotu = 50;
  double finalNotu = 30;
  double hesaplananNot = 0;

  hesaplananNot =((vizeNotu*40) + (finalNotu*60))/100 ;
  if(hesaplananNot >= 50){
    print("Tebrikler $hesaplananNot ile bu dersi geçtiniz.");
  }else{
    print("Maalesef $hesaplananNot ile bu dersten kaldınız.");
  }



  // CEVAP 4:
  
  for(int i=0; i<5; i++){
    print("İkbal Demir");
  }

  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol+1}.inci döngüde ismim : ikbal demir");
    kontrol++;
  }

  int kontrol1=0;
    do{
     print("${kontrol1+1}.inci döngüde ismim : İkbal Demir");
     kontrol1++;
    }while(kontrol1<5);


  //CEVAP 5:

  for(int i=1; i<100; i++){
    if(i % 3 ==0){
      if(i % 5 ==0){
        print("${i*i}");
      }
    }else{
      
    }
  }

  //CEVAP 6:
  
  int sayi = 6;
  int sonuc = 1;
  int sayac = 1;

  while(sayac <= sayi){
    sonuc = sonuc * sayac ;
    sayac++;
  }

  print("Girdiğiniz $sayi sayısının faktöriyeli : $sonuc");




  

}