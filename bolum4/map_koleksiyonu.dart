/*
* Map yapısı da set yapısı gibi sırasız bir şekilde elemanları saklayan bir koleksiyon ögesidir.
* Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
* Herhangi bir veri türü kullanılabilir ama burada  önemli olan key değerlerin unique yani eşşsiz olması gerekmektedir.
*
* Map yapısı sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir.
* Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.  
*/

void main(List<String> args) { // süslü parantez görünce map yapısıdır.
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};// map yapısının oluşturduğu
  // ilk yere string vs. value yani değerilerin oluşturuğu yere int ikinciye yani  int vs yazıyoruz

  print(alanKodlari);
  print(alanKodlari["bursa"]); // sadece bursa ile ilgileniyorsan key neyse onu yazıyoruz .

  Map<String, dynamic> ikbal = {
    "soyad": "Demir",
    "yas": 24,
    "bekarMi": true
  };

  // List sayilar = [0, 1, 2];

  //  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};  // buda bir map gösterimidir.

  deneme2['yas'] = 55;
  print(ikbal['yas']);

  for(String oankiAnahtar in ikbal.keys){ // gezmek isteğimizin hangi türde oludğunu bulup stringmiş onu yazıyoruz
    print(oankiAnahtar);                 // daha sonra oankiAnahtar değiş oluşturup ikbal.keys e giriyoruz.
    print(ikbal[oankiAnahtar]);         // oankiAnaharı ikbal yazıp değeri görüyoruz.
  }

  for(dynamic deger in ikbal.values){
    print(deger);
    
  }

  for(var element in ikbal.entries){ // hem keyi hemde değeri birlikte gezmek için entries kullanırız.
    print("Key : ${element.key} değeri : ${element.value}"); // entries = key value çifti demek.
  }

  if(ikbal.containsKey('yas')){  // yas değeri var mı yok mu onu görmek için yapabilriim 
    print("Bulunan yaş değeri ${ikbal['yas']}"); 
  }
}