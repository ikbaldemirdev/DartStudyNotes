void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  // User user5 = AdminUser();
  // User user6 = SadeceOkuyabilenNormalUser(); // upcasting yukarı cevrim : toplu bir türü diğerlerinin üstünde taşıyabilin.

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);

}

void test(User kullanici) { // poliforminizm çok biçimlilik 
  kullanici.girisYap();
}

class User{
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı.");
  }
}

class NormalUser extends User{ // user sınıfından kalıtılmış oldu extends methodu ile çocuk sınıfta diyebiliriz.
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override // bu sınıfın bir üst sınıfı var orada bu fonskiyon tanımlı ama biz bunu tekrar yazmak istersek .
  void girisYap() {
    print("Normal user giriş yaptı.");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle(){
    print("Ben sadece okuyabilirim");
  }
  @override
  void girisYap() {
   print("Sadece Okuyabilen normal user giriş yaptı.");
  }
}

class AdminUser extends User {
  @override
  void girisYap() {
    print("Admin user giriş yaptı.");
  }
  void toplamKullaniciSayisiniGoster() {
    print("Toplam kullanıcı sayısı 29");
  }
}