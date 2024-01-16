/* 
* Eğer bir nullable tipin null olmadığından eminseniz, null assertion operator yani ! kullanabilirisiniz
Böylece dart o değişkene non - nullable olarak davranır ve sorun kalmaz. 
* Bu işareti kullanınca şunu demiş olursunuz : deger null olmayacak bu yüzden bu değeri non-nullable bir 
değişkene atabilirsiniz.
*
* Eğer bu düşüncenizde hatalıysanız/ haksızsanız dart run-timeda bir hata fırlatır.
Böylece programımız null hatalarına açılmış olur bu yüzden yüzde yüz kodumuzun null olmayacağında emin değilseniz
bunu kullanmayın.
*
* Özetle ! koyduğunuzda dart'a şunu dersiniz : Biliyorum bu değişken null olabilir ama söz veriyorum ki 
null değer yok , o yüzden bunu null değer kabul etmeyen bir değişkene atayabilirsin.
*
* Dart aynı scopeda ise o değişken nullable bile olsa null olup olmadığını anlayabilir.
Farklı scopeda yani kapsamdaysa emin olmaz.
*/

void main(List<String> args) {
  int? nullOlabilirAmaDegil = 1;
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlabilirAmaDegil; // sonuna ! işareti konabilir. ?
  int b = nullDegerTutanListe.first!;
  int c = nullDondurebilirAmaDondurmeyecek()!.abs(); // hangisi null olabilirse temelde ona ! konur.
  print(a+b+c);
}

int ?nullDondurebilirAmaDondurmeyecek() {
  return 5;
}