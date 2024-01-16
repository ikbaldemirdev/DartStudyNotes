/* 
* Generic tipleri belirtirken de nullable ve non-nullable kavramları geçerlidir.
* Burada önemli olan ? nereye koyduğumuzdur.
* 
* Liste null olabilir diyorsak List<String>?, listenin bazı elemanları null olabilir diyorsak List<String>? 
diye belirtebiliriz.
*/
void main(List<String> args) {
  List<String> stringListesi = ["emre", "hasan", "mert"];
  List<String>? nullOlabilecekStringListesi; // generic tpilerde null hatası gidermek için ? koydum
  List<String?> nullOlabilecekStringleriTutanListe = ['emre', null, 'hasan']; // elemalarda hata olduğu için
// yani bütün listeden ziyade tek bir değerde hata olduğundan string tipinin sonuna ? koydum.
  print('string listesi $stringListesi');
  print('null olabilecek string listesi $nullOlabilecekStringListesi');
  print("Null olabilecek Stringleri tutan liste $nullOlabilecekStringleriTutanListe");
}