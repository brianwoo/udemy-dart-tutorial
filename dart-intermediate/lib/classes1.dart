import 'package:dart_intermediate/myclass.dart';
import 'package:dart_intermediate/animal.dart';


main(List<String> args) 
{
  MyClass mine = new MyClass();
  mine.sayHello("Bryan");

  //print(class1.calculate());

  Animal cat = new Animal("Bob");
  Animal dog = new Animal("Frank");
  cat.sayHello();
  dog.sayHello();
}