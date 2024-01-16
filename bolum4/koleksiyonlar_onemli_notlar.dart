void main(List<String> args) {
  // var listem = <String>[];
  // var myMap = <String,dynamic> {"yas":24}; // burada set map yapısını belirtmeden kolayca tanımladığımız zaman ssitem 
  // var mySet = <String> {'ikbal','Demir'}; // set yapısını map yapısı görebilir bunun için değerler girmeliyiz.

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

//Spreads operator 
  var sonListe = [...tekSayilar,...ciftSayilar]; // listeleri birleştirerek yazdırmak için kullanılır
  /* sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */
  
  var map1 = {'ad': 'ikbal'};
  var map2 = {'yas': 24};
  var sonMap = {...map1, ...map2}; // 2 mapi de birllikte yazmak için yazdık.

  var set1 = {"Hasan"};
  var set2 = {"ikbal"};
  var set3 = {"ayşe"};
  var set4 = {"ikbal"};
  
  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4}; // son set yapısını diğer setlerle birleşik yazmak için.
  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);


}