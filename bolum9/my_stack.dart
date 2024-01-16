class MyStack {
  List _listem = [];

  push(yeniEleman) { // yeni eleman eklemek için push methodunu kullanırız.
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast(); // son elemanı çıkarıp geri döndürüyor.
  }
}

class IntMyStack {
  List<int> _listem = <int>[];

  void push(int yeniEleman) { // yeni eleman eklemek için push methodunu kullanırız.
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast(); // son elemanı çıkarıp geri döndürüyor.
  }
}

class StringMyStack {
  List<String> _listem = <String>[];

  void push(String yeniEleman) { // yeni eleman eklemek için push methodunu kullanırız.
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast(); // son elemanı çıkarıp geri döndürüyor.
  }
}

class GenericStack <T> { // generic stack sınıfı istediğin türdü veriyi gir t ile generiğini tanımla şekil alssın.
  List<T> _listem = <T>[];
  void push(T yeniEleman) { // yeni eleman eklemek için push methodunu kullanırız.
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast(); // son elemanı çıkarıp geri döndürüyor.
  }
}