class Animal
{
  String _name;
  int _age = 0;

  Animal(String name, int age)
  {
    _name = name;
    _age = age;
  }

  String get name
  {
    return _name;
  }

  void set name(String value) => _name = value;


  int get age => _age;
  void set age(int value) => _age = value * 7;

}


main()
{
  Animal dog = new Animal("Bob", 12);
  dog.name = "Gill";
  print("dog = ${dog.name}");
  
  print("dog age = ${dog.age}");
  dog.age = 4;
  print("dog age = ${dog.age}");

}