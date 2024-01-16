/* 
* Dart dilinde interface kavramı yoktur ama sınıfları implements anahtar kelimesi ile interfacemis gibi kullanabiliriz.
* Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında top-
layabirliz .
*
* Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
* Interfaceliler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı 
implementes diyerek gerçekleştirebilir.
*
*/

void main(List<String> args) {}

abstract class Hayvan {

}

abstract class Ucabilenler {
  void fly();
  void test () {
    print("Test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler { // birden fazla soyut sınıf özelliği kullanmak
  @override  // istiyorsam implements methodunu kullanmak zorundayım.Hayvan sınıfı olarak extends diyerek kullanabilim                         
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    print("Uçan kuşlar ");
  }
  
  @override
  void test() {
    // TODO: implement test
  }

}

class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }

}