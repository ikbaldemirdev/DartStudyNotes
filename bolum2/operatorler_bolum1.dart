void main(List<String> args) {
  double sayi1= 9;
  double sayi2= 6;


  // toplama çıkarma bölme de var
  print("$sayi1 % $sayi2 mod ${sayi1%sayi2} ");

  // ATAMA VE KARŞILAŞTIRMA ÖPRERATOÖRLERİ 

  double sayi3 = 5;
  sayi3 = sayi3 +5;
  print(sayi3);

  sayi3 += 5;  //sayi3 = sayi3 + 5 anlamına geliyor üstteki kodun kısa yolu 
  print(sayi3);

  sayi3 -= 2;
  print(sayi3);


  double sayi4 = 9;
  double sayi5 = 5;

  if(sayi4 <= sayi5){

  }else{
    print("Sayi $sayi4 küçük ve eşit değildir $sayi5 ");
  }

  String isim = "ikbal";
  String soyIsim = "Demir";

  if(isim != soyIsim){
    print("İsim soy isimle aynı değil.");

  }else{
    print("İsimle soy isim aynı değere sahip değil.");
  }

  // MANTIKSAL OPERATÖRLER 

  // && , || , !

  // Java ve kotlin bilen ==> hem kotlini bilecek , herhangi biri bilinmiyorsa şart sağlanmaz.
  // Java veya kotin bilen ==> bu dillerden sadece birini bilen demek .
  bool kosul1 = true;
  bool kosul2 = false;

  print(kosul1 && kosul2);
  //print(kosul1 || kosul2);
  print(!kosul1);  // normalde kosul 1 falsedur ama başına ünlem koyarsam tam tersi değeri alırım true .
  print(kosul2);

   

  





}
