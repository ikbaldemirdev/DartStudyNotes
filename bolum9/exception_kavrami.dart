// ignore_for_file: deprecated_member_use

void main(List<String> args) {
  print("program basladi.");

  try { // eğer kodda hata alacaksak 5/0 gibi try catch kullanarak hatayı alıp atarak yola devam ederiz. 
    int sayi = 100 ~/int.parse("emre"); //  ~ işareti küsüratı alma sadece int değerini ver demek
    print(sayi);
  } on UnsupportedError {  // burada hatayı kesin bilmek ve ona göre bilgi vermek.
    print("Bölen sıfır olamaaz");
  }on FormatException catch(e) { // değerlerin birbirine bölünemiceği bir hata istiyor.
    print(e.message);
    print(e.source);
  }
  
   catch (e) { // hatayı burada yaklarız
    print("Hata çıktı ${e}");
  }finally{ // hata olsun olmasın çalışsan bir methoddur.
    print("işlem bitti");
  }

  print("Program bitti");
}