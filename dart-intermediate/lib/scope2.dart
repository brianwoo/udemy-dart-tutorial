class Animal
{
  String _name = "";
  int _age = 0;
  String breed = "";

  Animal(String name, int age, String breed)
  {
    this._name = name;
    this._age = age;
    this.breed = breed;
  }

  void sayHello1() 
  {
    print("Hello my name is $_name, age = $_age, breed = $breed");
  }

  void _display(String message)
  {
    print("message $message");
  }

  void saySomething(String message) => _display(message);
}


void main()
{
  Animal cat = new Animal("Fluffy", 16, "Short Hair");
  cat.breed = "Mixed";
  cat._name = "XXX";  // same file, works
  cat.sayHello1();
  cat._display("message here!"); // same file, works

  // not working in scope2_main.dart
}