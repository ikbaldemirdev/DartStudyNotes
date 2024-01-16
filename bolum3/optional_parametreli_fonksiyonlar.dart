/*
* Methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda
süslü ve köşeli parantez kullanılır.
* Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır. 
* Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama 
önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız . 
* Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer 
kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
*/

void main(List<String> args) {
  //int toplam = sayilariTopla(4, 5, 6);

  /* int toplam = sayilariTopla(2, 3);
  int toplam2 = sayilariTopla(2, 3, 8);
  print("Toplam : $toplam");
  print("Toplam : $toplam2"); */

  int toplam = sayilariTopla(9,sayi1: 5, sayi3: 8, sayi2: 6);
  print("Toplam : $toplam");

  int hacim = hacimHesapla(en: 5, boy: 9, );
  print("Hacim: $hacim");
}

//Required Parameter  // gelen değerler sırasıyla parametrelere atanmalı değişkenler ile . 
/*int sayilariTopla(int sayi1, int sayi2, int sayi3){
  return sayi1 + sayi2 + sayi3;
}*/

// Optional Parameter //bir değeri girmek istemiyorsanız köşeli parantez ile
/* int sayilariTopla(int sayi1, [int sayi2=0, int sayi3 = 0]){ // değişkeni alabilirisniz değişken null olacağından 
  return sayi1 + sayi2 + sayi3;  //izin vermez ve 0 atarız . toplamada 0 önemi yoktur.
} */

//Optional named İsimlendrilmiş parametreler süslü parantezlerle oluşturulur . İlk önce hangi parametreyi gireceğini
int sayilariTopla(int sayi4,{int sayi1=0, int sayi2 =0, int sayi3=0}){ // belirtme şansın olur . Belirtmek istemediklerine ise
  return sayi4 + sayi1 + sayi2 + sayi3;  // 0 atayarak null değer kabul etmediği için problemi çözersin.
} // Buradaki süslü parantezli isim parametrenin özelliği kullanmak istersen isim kullanman şart diyor.

int hacimHesapla({int en = 1, int boy= 1, int yukseklik= 1}){ // eğer değer vermezse nullden dolayı 1 kullan.
  return en * boy * yukseklik;
}