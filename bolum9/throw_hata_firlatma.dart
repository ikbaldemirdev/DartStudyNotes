import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
  print("Değer ${deger.toStringAsFixed(2)}"); // virgülden sonra kaç basamak göstermem gerektiğini söyler.
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
    
  } catch(e){
    print(e);
  }
  
}

double kareKokunuAl(int i) {

  try{
  if(i<0) {
    throw FormatException("Sayı negarif olmaz");
    // print("Program hiç bir şekilde buraya ulaşmıcak demek"); gri yazıyor yani printin içindeki :)
  }else
  return sqrt(i); // sqrt verdiğin sayının karekökünü hesaplayıp verir.

  }on FormatException catch (e) {
    print(e.message +" metot içindeyim");
    
  }finally { // return değer almadığı için hata verdi bende finally yani ne olursa olsun çalışasak ekledim.
    return 0;
  }
  
}