class Dog 
{
  int age = 1;
  String name = 'fido';

  Dog(int age, String name)
  {
    this.age = age;
    this.name = name;
  }

  int ageInDogYears() => age * 7;
}



main()
{
  Dog bob = new Dog(6, "Bob");
  print('${bob.name} is ${bob.ageInDogYears()} years old');
  
}