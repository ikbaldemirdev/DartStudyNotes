/* 
** Lambda : ismi olmayan fonskiyonlardır. Dartta her fonksiyon aslında bir nesnedir.
*/

void main(List<String> args) {
  Function fonskiyon1 = (int a, int b) { // bu fonskyiona lambda fonksiyonu denir.
  int toplam = a + b;
  print(toplam);
};
  fonskiyon1(5,8);
  String isim = "Emre";
  print(isim);

  var f2 = (int s) => s * 2;  // fat arrow kullanımı aşşadakiyle bir farkı sadece daha kısa.

  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));

}

void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}