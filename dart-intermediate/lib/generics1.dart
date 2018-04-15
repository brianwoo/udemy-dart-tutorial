main()
{
  List<int> numbers = new List<int>();
  numbers.addAll([1,2,3,4]);
  print(numbers);

  List<String> strings = new List<String>();
  strings.addAll(["a", "b", "c"]);
  print(strings);  

  add<int>(1, 2);
  add<double>(1.0, 2.09);
  add<String>("hello ", "world");

  addNumbers<int>(1,2);
  addNumbers<double>(1.0, 2.09);
  //addNumbers<String>("hello ", "world"); // won't work coz String does not extends num
}


void add<T>(T a, T b)
{
  print(a + b);  // warning coz this might not work with custom objects.
}


// More complex
void addNumbers<T extends num>(T a, T b)
{
  print(a + b);
}