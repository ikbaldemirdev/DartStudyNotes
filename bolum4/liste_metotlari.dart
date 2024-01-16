void main(List<String> args) {
    List<int> sayilar = [10,5,4,3,11,9,15];

    if(sayilar.isNotEmpty){ // Liste boş değilse bunları yap .
      print(sayilar.first); // listenin ilk elemanını gösterir 
      print(sayilar.last); // Listenin son elemanını gösterir.
    }
    
    print("Boş mu ? :" + sayilar.isEmpty.toString()); // Listeniz boş mu sorusunu sorar .
    print("Eleman sayısı: ${sayilar.length}"); // birden fazla eleman varsa süslü parantez kullanırız işlem içinde.
    print("Ters sırada ${sayilar.reversed}"); // listeyi sondan başa yazar
    sayilar.add(23); // Verilen elemanı listeye ekler.
    print(sayilar);
    sayilar.remove(3); // Verilen elemanı siler  // SABİT BOYUTLU LİS ADD REMOVE GİBİ KOMUTLAR ÇALIŞMAZ.
    print(sayilar);
    sayilar.removeAt(1); // Verilen indexteki elemanı siler.
    print(sayilar);

    //sayilar.clear();
    if(sayilar.contains(9)){ // verilen eleman var mı yok mu kontrol eder
      print("Listede 9 var");
    }else{
      print("Listede 9 yok");
    }
    print(sayilar);

    print(sayilar.elementAt(2)); // indexteki 2. elemanı göster gibi.
    print(sayilar.indexOf(11)); // bana 11 elemanın indexini göster.
    sayilar.shuffle(); // Rastgele liste elemanlarının yerini değiştirir.
    print(sayilar);

}