/* 
* Dart dili eğer aynı scope içinde null check yapılırsa nullable değişkenlere non-nullable gibi davranır.
*
* Farklı bir yöntem hata fırlatmak olabilir. Eğer değer null ise hata fırlatırsak return ifadesi çalışmayacak 
ve fonksiyonumuz null değer döndürmeyecktir.
*/

int karakterSayisiniBul(String? metin) {
  if (metin == null){
    throw Exception("Metin null");
    //return 0;
  }
  return metin.length;
}

 main(List<String> args) {
  try {
    print(karakterSayisiniBul(null));
  } catch (e) {
    print(e);
  }
  
}