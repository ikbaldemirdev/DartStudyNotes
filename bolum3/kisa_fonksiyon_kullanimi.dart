void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikart(10, 5);

  print("fark: $fark");

  print("Çarpım: "+ sayilariCarp(7, 9).toString());

  print("Büyük olan sayı: "+ maxOlaniBul(17, 10).toString());

  print("Küçük olan sayı: "+ minOlaniBul(10, 91).toString());
}

void sayilariTopla(){
  int sayi1= 10, sayi2=5;
  print("toplam: ${sayi1+sayi2}");
}

int sayilariCikart(int s1, int s2){
  return s1- s2;
}

int sayilariCarp(int s1, int s2) => s1 * s2; // tek bir satırlık komut olmak şartı ile kısa kullanım FAT ARROW kullanımı
// yukardaki fonskiyondan farkları süs parantez return ifadesi yok yerine => var sadece . KISA YANİ.

int maxOlaniBul(int s1, int s2){
  if(s1<s2){
    return s2;
  }else{
    return s1;
  }
}

int minOlaniBul(int s1, int s2) => s1<s2 ? s1 : s2;