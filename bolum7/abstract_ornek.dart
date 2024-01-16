void main(List<String> args) {
  Veritabani db = FirebaseDB();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.UserUpdate();
}

abstract class Veritabani {
  void userSave(); // içi tanımlanmamış dolmamış fonk varsa bu kesin abstract olmalı.
  void UserUpdate();
  void userDelete();

  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void UserUpdate() {
    print("Oracle dbdeki user güncellendi");
  }

  @override
  void userDelete() {
    print("oracle dbden user silindi");
  }

  @override
  void userSave() {
    print("Oracle dbye kayıt edildi");
  }
  
  @override
  void urunGuncelle() {
    print("Oracle dbde güncellendi.");
  }

}

class FirebaseDB extends Veritabani {
  @override
  void UserUpdate() {
    print("Firebase dbdeki user güncellendi");
  }

  @override
  void userDelete() {
    print("Firebase dbden user silindi");
  }

  @override
  void userSave() {
    print("Firebase dbye kayıt edildi");
  }
  
  @override
  void urunGuncelle() {
    print("Firebase dbde güncelledi.");
  }
  

}