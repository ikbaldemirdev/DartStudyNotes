class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1});

  @override
  String toString() { // benim oluşturduğum sınıfın string olarak gösterimi sınıfı ben oluşturduğum için verileri nasıl
    return "ID: $id Not değeri: $notDegeri"; // yazacağını sistem bilmiyor ondan bunu yapıyorum.
  }
}