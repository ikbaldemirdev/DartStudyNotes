 /* 

*/

void main(List<String> args) {
  /*
  var str = "emre";  // Burada str değişkenine atanan emre daha sonra kolayca değiştirilebilir var vs ile tanımlanmış.
  str = "altunbilek";

   final String str2 = "İkbal"; // final ile tanımlanmmış ise ölümüne değiştiremezsin yerine başkasını koyamazsınn.
  str2 = "Demir"; // hafızada çok büyük rahatlık yaratacak 500 kere kullansanda bir kere okucak sistem onu.

  const String str3 = "İkbal"; // aynı şekilde const ile oluşturduysanda yerini başkasını koyamaz silemezsin onu.
  str3 = "Demir"; */

  /*const sayi = 5; 
  final sayi2 = 10;

   final tarih = DateTime.now(); // run kısmından sonrakiler için kullanılır.
  const tarih2 = DateTime.now();// burada ekrana çıktı gelmeden sonuç alınamayacağı için const kullanılamaz 
  // mesela internetten veri çektik orada final kullanırız run kısmından sonrakiler için. */

  /* final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  
  liste.add(4);
  liste2.add(5); */
  
  // canonicalized
  const liste = [1 ,2]; // içeriği değişmez eşitmi diye sorarsan eşit der
  const liste2 = [1, 2];
  //const liste3 = [1, 2];

  if(liste == liste2) { // final listelerdeki veriler aynı olsa bile final bellekteki listenin numarasını 
    print("Eşit");    // değiştirmeyeceği için aynı elemanlı listeler vs eşit olarak gözükmez. yanii yeni bir yapı
  }else{                         // oluşturamayız.
    print("Eşit değil");
  }
}