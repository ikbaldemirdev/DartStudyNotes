void main(List<String> args) {
  for(int i=0; i<=10; i++ ){   // kaç kere çalışacağını bildiğim durumlar kullanacağım döngü
    
    if(i % 2== 0){
      print("$i");
    }

  List isimListesi=["emre","hasan","ikbal"];
  for(String gecici in isimListesi){  //isim listesi hangi veri tipindeyse stringdi mesela string olarak gecici nesnesi 
    print("$gecici");   // oluşurdum sonra in diyerek listenin adını yazıp döngüyü geçici değişk. yazdırdım.
  }

  for(int i=0; i<isimListesi.length; i++){
    print("Okunan eleman "+ isimListesi[i]);  // [i] i ninci elemandan başla demek. 
  }

  int sayac = 0 ;

  while(sayac < 3){ // ne kadar tekrarlanacığını billmediğimiz durumlarda kullanırız  
    print("Okunan sayaç değeri $sayac");
    sayac++;
  }

  int sayac2 = 0;

  do{  // önce yap sonra döngüye sokmanı istediğim durumlarda kullanırım.

    print("Okunan sayaç değeri $sayac2");
    sayac2++;

  }while(sayac2<5);

  for(int i=0; i<10; i++){

    if(i>5){
      break;  // döngüyü sonlandırır.
    }
  }

  for(int i=0; i<10; i++){

    if(i>5){
      print("i değeri: $i");
    }else{
      print("i değeri 5 den küçük olduğu için herhangi bir şey yapılmayacak.");
      continue;
    }
  }

  distakiDongu: for(int i=1; i<=3; i++){   // döngüye isim verdim 
    for(int j=1; j<=3; j++ ){
      

      if(i==2){
        continue distakiDongu;  // şart sağlandığında countinue görevini yaptı ve aşşağıdaki hiçbir kodu çalıştırmadı.
        
      }
      print("$i * $j = ${i*j}");
    }
  }


  
                           
}
 
  }        