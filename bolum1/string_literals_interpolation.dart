// launch.json a giderek run dediğimde hangi dosyadan çalışmaya başladığını 
// belirtmek için  "program": "bolum1/string_literals_interpolation.dart" kodunu yazarım
void main(List<String> args) {

  String isim1 ="ikbal"; // değişkenlere atanabilen tek satırlı ifadelere literal ifade denir .
  
  print(isim1);       

  String isim ="İkbal";           
  String soyIsim = "Demir";
  var kurs = "Dart'ın kullanımı";
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğim";
  print(kurs+kursTanimi);

  print(isim+ " "+soyIsim);  // dolar işaretini değişkenin başına koyarız interpolation demek.Daha rahat yazmak için  .
  print("$isim $soyIsim");    //   
  print("soyadım olan $soyIsim'te bulunan karakter sayısı:" +soyIsim.length.toString()); // aşşadaki daha kısa
  print("Karekter sayısı ${soyIsim.length}");  //  { } ifadeleri gruplamak lazım method diyoruz bunlara değişken olduğu anlaşılsın diye
  print("Karekter sayısı: ${isim.length}");

  double en = 10;
  double boy = 12;
  print("Eni $en boyu $boy dikdörtgenin alanı ${en*boy}");
  print(15.9.toInt());
  print("Eni ${en.toInt()} boyu ${boy.toInt()} dikdörtgenin alanı ${(en*boy).toInt()}");
  


}                               