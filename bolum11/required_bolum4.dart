/* 
* darttaki isimlendirilmiş parametreler varsayılan olarak opsiyoneldir. tanımlanması kullanıcıya bağlıdır.
Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilemez Bu yüzden parametrelerin
veri tiplerini tanımlarken String? ,int? gibi nullable tiplerle belirtmeliyiz.
*
* Bunun dışında tüm parametlere varsayılan değerler atanarak da sorun çözülebilir.
*
* Son çözüm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanabilir.
*/

int ucSayiyiTopla({required int ilk, required int ikinci, required int ucuncu}) { // {} varsa fonkda kullanıcının isteğine bağlı parametre
  return ilk + ikinci + ucuncu; //dir yani kullanıcı isterse değer girer.
}

void main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 6);
  final toplam3 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 3);
  print(toplam2+toplam3+toplam);
}