import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = "ikbal";
  String _sifre = "123456";

  bool baglan() {
    if(_internetVarMi()) {
      if(_kullaniciAdi == "ikbal" && _sifre == "123456") {
        return true;
      }else
      return false;
    }else{
      return false;
    }
  }

  VeriTabaniIslemleri(){}

  VeriTabaniIslemleri.loginWithNameandPassword(String kullaniciAdi, String sifre){
    
  }

  bool _internetVarMi() {
    if(Random().nextBool()) {
      return true;
    }else 
    return false;
  }
  }