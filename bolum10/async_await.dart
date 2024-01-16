void main(List<String> args) async { // await kullanıyorsak async kullanmak zorundayım fonk başında
  print("internetten kişi verisi getirilecek");
  // String kisi = await kisiVerisiniGetir(); // await future yapısı bunu getirene kadar bekle demek .
  print("Başka işler yapılacak.");
  print("İşlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () { // future süreden sonra virgül , parantez sonra süslü parantez ile devam edilir 
   return "Kişi adı: Emre ve id:100";
  });
}