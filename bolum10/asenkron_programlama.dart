/* import 'dart:async';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar.");
  print("Cocuk ekmek için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) =>  print(value)).catchError((hata){
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti")); // finally gibi programın sonunda kesin kullanmamız gerekir.

  print("Peynir zeytin hazırlanır.");
  print("Kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), (){
    return "Çocuk ekmekle eve girer";
    //throw Exception("Bakkalda ekmek kalmamış");
  });

  return sonuc;
  
}
 */


main(List<String> args) {
  print("Kahveyi demlemek için makineyi çalıştırdım.");
  kahveIslemi();
  print("Yumurtayı pişirmek için sıcak suyun içine koydum.");
  yumurtaIslemi();
  print("Kahvatılıkları dolaptan çıkardım.");
  print("Kahvaltı hazır!");
}

void kahveIslemi() {
  print("Kahve demleniyor.");
  Future.delayed(Duration(seconds: 15), (){
  print("Kahve demlendi.");
  });
}


void yumurtaIslemi() {
  print("Yumurta pişiyor.");
  Future.delayed(Duration(seconds: 10), (){
  print("Yumurta pişti.");
  });
}