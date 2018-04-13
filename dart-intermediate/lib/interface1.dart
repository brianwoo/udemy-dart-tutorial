class Employee
{
  String name = "";

  void test() => print("test");
}


class Manager implements Employee
{
  String name = "Bob";

  void test()
  {
    print("test Manager ${super.toString()}");
  }
}


void main()
{
  Manager bob = new Manager();
  bob.test();
}