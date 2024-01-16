void main(List<String> args) {
  
  // ARTTIRMA AZALTMA OPERATORLERİ 

  int sayi1 = 10;
  print(sayi1);

  sayi1++;
  print(sayi1);

  int sayi2 = 10;

  print(sayi2++);  // burada sayi2 yi yazdırdıktan sonra 1 ekledik
  print(++sayi2);   // sonrasında sayi2 ye 1 ekleyip yazdırdık bu yüzden sayımız 10 iken 12 oldu.

  // İşlem önceliği 

  // () -> önce parantez içi işletilir.
  // ++ ve -- değişkenden önce gelir 
  // / ve * 
  // + ve - 
  // = atama işlemi 
  // ++ ve -- değişkenden sonra gelenler 


}