/* 
* Higher order fonksiyonlar : Bir fonksiyonu parametre olarak alan ve geriye fonksiyon döndüren fonksiyonlardır.
* Tabi ikisinide aynı aynı yapabilir.
*
*/

void main(List<String> args) {
   List<int> liste = [1, 2, 3];
   liste.forEach((element) {
    print("Element $element");
   });
}