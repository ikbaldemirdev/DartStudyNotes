void main(List<String> args) {
  
  int sayi1 = 12;
  num sayi2 = 12;
  //var sayi3 = 16;

  if(sayi1 > sayi2){
    print("$sayi1 sayısı $sayi2 sayısından büyüktür.");
  }else{
    print("$sayi2 sayısı $sayi1 sayısından küçüktür.");
  }

  print("*******************************************************************");

  if(sayi1<sayi2){
    print("$sayi1 sayısı $sayi2 sayısından büyüktür.");
  }else if(sayi1>sayi2){                                 // 3. seçenekte else if kullandık.
    print("$sayi2 sayısı $sayi1 sayısından küçüktür.");
  }else{
    print("Verdiğiniz sayılar birbirine eşittir.");
  }

  print("**********************************************************************");

  int notDegeri = -10;

  if(notDegeri>=80 && notDegeri<=100){
    print("AA");
  }else if(notDegeri>=70 && notDegeri<80){
    print("BB");
  }else if(notDegeri>=60 && notDegeri<70){
    print("CC");
  }else if(notDegeri>=50 && notDegeri<60){
    print("DD");
  }else if(notDegeri>=0 && notDegeri<50){
    print("KALDINIZ!!");
  }else{
    print("HATALI GİRİŞ");
  }


}
