import 'my_stack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("ikbal");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  // intMyStack.push("iko"); int tanımladığım sınıfa string değer giremem
  
  StringMyStack stringMyStack = StringMyStack();
  // stringMyStack.push(5); aynı şekilde string tanımladığım değere int değer giremem.
  stringMyStack.push("demir");

  GenericStack genericStack = GenericStack();
  genericStack.push("ikbal");
  genericStack.push(5);
  print(genericStack.pop());
  }

