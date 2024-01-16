class Musteri {
  int? _musteriNo;

  /* Musteri(int musteriNo) {  // nesne oluşturdum ve müsterno girilen değeri müsteri no sınıfına attım
    this.musteriNo = musteriNo;
  } */
  
  Musteri(int musteriNo){ // yukadakinin kısa halini yaptım.
   _musteriNoKontrol(musteriNo);
  } 

  String get musteriNoSoyle{
    return "Müşteri No: $_musteriNo";
  }

  void set musteriNoAta(int no){
    if (no >300) {
      _musteriNo = no;
    }else
    return;
  }


  void _musteriNoKontrol(int no) {
    if (no >300) {
      _musteriNo = no;
    }else
    return;
  }

  void bilgileriYazdir() {
    print("Müsteri oluşturuldu müsteri no : $_musteriNo");
  }

}