class Animal
{
  String name = "unknown";

  Animal(String name)
  {
    String name = "hello";
    this.name = name;
  
    print(name);
  }
}


void main() 
{
  Animal cat = new Animal("Bob");

  for (int i=0; i < 10; i++)
  {
    print(i);
    if (i < 8)
    {
      int i=5; // valid but causes issues
      if (i > 4)
      {
        print("i is < 8 and > 4");
      }
    }
  }
}