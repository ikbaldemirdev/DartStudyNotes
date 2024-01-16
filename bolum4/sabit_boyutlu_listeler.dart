/*
*List ikiye ayrılır;
* 1- Sabit uzunluklu 
* 2- Büyüyen listeler

* Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
* List <int> numaralar = List.filled(10,0); //10 eleman içeren sabit uzunluklu liste yani dizi.
* Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0.indexine bakılır.
numaralar[0] diyerek..  
*
*/

void main(List<String> args) {
  //int sayi =4;  // Aşşağıdaki lisete kaç elemanı belli olan bir liste çeşidi "FİLLED" . int dediği elemanlarını türü,  
  List<int> sayilar =List.filled(5, 2, growable: false); //sayilar dizinin adı 5 eleman sayısı 2 ise elemannın kendisi
  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;

  print(sayilar);
  print(sayilar.length); // sayılar listesinin kaç elemanlı olduğunu yazdı.
  print(sayilar[3]); // 3. index numarasını getirdi,
  List<String> isimler= List.filled(2, "");
  isimler[0]= 5.toString();
  isimler[1]= "İkbal";

  print(isimler);
 
  List<dynamic> karisik = List<dynamic>.filled(5, 0); // liste türüne bir şey yazmaksam dynamic olarak algılar 
  karisik[0]= 'ikbal';                       // yani her şey gelebilir. dynamic burayda yazılabilir.
  karisik[1]= 5;
  karisik[2]= false;

  print(karisik);

  // Liste elemanlarını gezmek ;
  for(int i =0; i<sayilar.length; i++){
    sayilar[i] += 5;
    print(sayilar[i]);  // sayıların sürekli illerden birisini getirmesi için i koydum.
  }

  print("*************************************");

  for(int oankiEleman in  sayilar){  // sayilardaki elemanları sırayla yazdırıyor. tek tek elemanları yazdırmak için.
    print(oankiEleman);
  }

}
