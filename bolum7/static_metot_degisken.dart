/* 
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz.burada karşımıza static kavramı 
çıkar.

Static kullanarak nesne değil sınıf değişkenleri ve methodları oluşturabiliriz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. ama biz bunları static
olarak tanımlarsak artık nesne üretmeden bu değerlere erişebilir ve kullanabilirz. artık onlar nesnelerin değil 
sınıfın ve method ve değişkenlerdir. 

ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz statik metotların içinde this
anahtar kelimesi kullanılmaz.

static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static değerlere erişilebilir.

*/

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();
  m1.cikar();
  m1.cikar();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();
  m2.cikar();
  m2.cikar();
  m2.cikar();

  Matematik m3 = Matematik(20, 30);

  m3.cikar();
  m3.cikar();
  m3.cikar();
  m3.cikar();
  m3.topla();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("Toplam İşlem sayısı ${Matematik.toplamIslemSayisi}"); // nesneney değil sınıfa bağlı olaack sınıfın 
}                                                              // yaptığı bütün işlemleri yazdıracak

class Matematik {
  // instance variable : Kullanmak için mutlaka nesne üretmek lazım.
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int  toplamIslemSayisi = 0;

  // class variable , sınıf değişkeni buradaki pi değişkeni artık sınıf değişkeni static sayesinde nesne üretmeye gerek 
  static double PI = 3.14; // yok sınıf nokta diyerek direkt erişebilirim.
  static void sinifAdiniSoyle() { // aynı şekilde static metodumuz.
    print("Ben matematik sınıfıyım.");
  }
  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("Toplam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Çıkar ${birinciSayi - ikinciSayi}");
  }
}