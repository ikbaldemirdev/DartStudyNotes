



void main(List<String> args) {
  User user1 = User();
  user1.girisYap();
  NormalUser normal1 = NormalUser();
  normal1.davetEt();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.girisYap();
  user.adiniSoyle();
  user.davetEt();

 


  // User user5 = AdminUser();
  // User user6 = SadeceOkuyabilenNormalUser(); // upcasting yukarı cevrim : toplu bir türü diğerlerinin üstünde taşıyabilin.

  
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