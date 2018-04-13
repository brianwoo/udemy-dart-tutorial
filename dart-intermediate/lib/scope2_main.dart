import 'scope2.dart' as scope2;

main()
{
  scope2.Animal cat = new scope2.Animal("Fluffy", 16, "Short Hair");
  cat.breed = "Mixed";
  // cat._name = "XXX"; // private - not working 
  cat.sayHello1();
  //cat._display("message here!"); // private - not working
  cat.saySomething("message");
}