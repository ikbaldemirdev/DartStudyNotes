/*
switch: ard arda if - else if kullanmak yerine genellikle switch yapısı kullanılır 
her bir caseden sonra break denilerek switch yapısından çıkılmalıdır.

switch kullanırken sadece string ve int veri türleri kullanılır . double ve boolean kullanılmaz .
*/

void main(List<String> args) {
  String notDegeri = "BB";

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90 - 100 aralığındadır");
      break;

    case "BA":
      print("Notunuz 80 - 90 aralığındadır");
      break;

    case "BB":
      print("Notunuz 70 - 80 aralığındadır");
      break;

    case "CB":
      print("Notunuz 60 - 70 aralığındadır");
      break;

    case "CC":
      print("Notunuz 50 - 60 aralığındadır");
      break;

    default:
      {
        print("Hatalı Giriş");
      }
  }

  int yas = 24;

  switch(yas){
    case 18 :
    print("Yaşınız 18");
    break;

    case 20 :
    print("Yaşınız 20");
    break;

    case 24:
    print("Yaşınız 24");
    break;

    default : {
      print("Bilinmeyen değer");
    }
  }

  int sayi = 30;
  int bolum = (sayi / 10).toInt();

  switch(bolum){
    case 3:
    print("Sayı 30 dan büyüktür.");
    break;

    case 2:
    print("Sayı 20 den büyüktür.");
    break;

    case 1:
    print("Sayı 10 dan büyüktür.");
    break;

    case 0:
    print("Sayı 10dan küçüktür.");
    break;



  }
}
