

void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if(ogr1.id < ogr2.id) {
      return -1;
    }else if(ogr1.id > ogr2.id) {
      return 1;
    }else return 0;
  });

  print(tumOgrenciler);

  var mapIterble = tumOgrenciler.map((Person e) => "${e.isim}").toList();
  print(mapIterble); // bunu bize ıterableye dönüştürür. ama daha çok liste çeviriiz.

  tumOgrenciler.add(yunus); // add ile yeni isim eklerim.
  tumOgrenciler.addAll([ayse, ali]); // burada addall ile yeni liste oluşturup bu listeyi diğerine ekleyebiliriz

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((element) => element.id > 10);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap(); // listeyi mape dönüştürüyor.
  print(yeniMap[0]!.isim);

  print(tumOgrenciler.contains(Person(3, "emre")));

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);// şart koşula göre method
  print(sonucEvery); 

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1); // 1. elementi bana getir.
  print(bulunan);

  /* var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  var listGenerate = List<Ogrenci>.generate(5, (index) => Ogrenci(index,"$index", index*2));
  print(listGenerate);

  print(listeOf);

  var degistirelemezListe = List.unmodifiable([0, 1, 2]);
  // degistirelemezListe.add(5); // atamaz çünkü değiştirilemez liste oluşturdum*/
}

class Person {
  int id = 0;
  String isim = "";
   Person(this.id, this.isim);
   @override
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi): super(id, isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders"
    "sayısı: $alinanDersSayisi\n";
  } 
}
