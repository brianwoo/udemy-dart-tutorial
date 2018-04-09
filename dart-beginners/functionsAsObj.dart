main() 
{
  int age = 43;
  var dogYears = calcYears;
  var catYears = calcYears;

  print("Your age in dog years is ${dogYears(age: 43, multiplier: 7)}");
  print("Your age in cat years is ${catYears(age: 43, multiplier: 12)}");
}


int calcYears({int age, int multiplier})
{
  return age * multiplier;
}