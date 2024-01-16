void main(List<String> args) {
  Map<String, dynamic> map =Map();
  // var map2 = <String, dynamic> {};

  map["id"] = 5;
  map["isim"] = "ikbal";
  map["renk"] = "yeşil";

  // var yeniMap = Map.from({"değer": "yeni"});
  var mapFromEntries = Map.fromEntries(map.entries);

  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
  var mapFromIterable = Map.fromIterable(liste, key: (item) {
    return "$item";

  }, value: (item) => "${item*2}");
  print(mapFromIterable);

  map.update("id_yeni", (value) => value *3, ifAbsent: () =>100 ); // absent eğer yoksa demektir.
  print(map);

  map.putIfAbsent("soyisim", () => "demir"); // eğer yoksa bu değeri koy anlamına gelir.
  print(map);
}