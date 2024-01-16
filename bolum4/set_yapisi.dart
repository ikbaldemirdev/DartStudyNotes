/*
* Bir diğer koleksiyon yapısı da set yapısıdır.
* List den en önemli özelliği farklı elemanları sıralı olarak tutmaz, Bu durumda list lerde olduğu gibi indexleri kullanamayız.
* Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
*
* İndex olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışındaki listelerdeki methodlar 
set içinde geçerlidir . 
*/

void main(List<String> args) {
  
  Set<String> isimler=Set();  // Veriler saklanırken sıra önemsenmez. index değeri yok
  isimler.add("İkbal");
  isimler.add("Mert");
  isimler.add("Fatma");
  isimler.add("İkbal");
  isimler.add("İkbal");

  bool sonucum = isimler.remove("İkbal"); // verilen değeri listeden siler eğer değer verilen değer yoksa false yazdırı.
  print("sonuç: $sonucum");

  for(String s1 in isimler){
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1,2,3,4,5,1,4,2,5,9,1,5,1,2]);
  List<int> ciftsayilar = [0,2,4,6,8,10,8,6,4,2,0];

  for(int s1 in numaralar){
    print("no : $s1");
  }
  
  numaralar.clear();
  numaralar.addAll(ciftsayilar);

  for(int s1 in numaralar){
    print("add alldan sonra no: $s1"); 
  }
}