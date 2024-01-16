void main(List<String> args) {
  try{
  Ogrenci emre = Ogrenci(-5);
  print(emre.yas);
  }on AgeException catch(e) {
    print(e.mesaj);
  }finally{
    print("Program bitti");
  }
  
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = "Age Exception"});

  @override
  String toString() {
    return "Hatanın tostring metodu vardır.";
  }
}
  
class Ogrenci {
  int yas = 0;
  Ogrenci(int yas ){
    if(yas < 0) {
      throw AgeException(mesaj:  "AgeException - Yaş negatif olamaz");
    }else
    this.yas =yas;
  }
}
  