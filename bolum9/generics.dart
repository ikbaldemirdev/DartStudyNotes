/* 
* Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.
* Sürekli kullanılan koleksiyon yapıları (liste, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon
yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mısınız? 
*
* Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur,
compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir. Böylece runtimeda çıkabilecek hataların
önüne geçilir.
*
*Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır.
Bu listeye String dışında bir veri eklenrise daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir.
Böylece daha güvenli kod yazmış oluruz.
*
* Generic'ler dartta bulunan çoğu yapıda zaten vardır. List, map, set, Future, Stream gibi .. Kendi oluşturduğunuz
sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış olursunuz hemde benzer
benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda toplayabilirisiniz. 
*/

void main(List<String> args) {
  List<String> liste = []; // generics dediğimiz listenin yanıdaki liste hangi türde olacak belirtmesi.
  liste.add("iko");
  liste.add("sdfsdaf");

  yazdir(liste);
  
  // List<E> ==> Element 
  // Map<K> ==> Key 
  // Map<V> ==> Value 
  // R ==> Methodların return tipleri için

  // Ogrenci <T extends Insan > 
}

yazdir(List list) {
  print(list[1].length);
}