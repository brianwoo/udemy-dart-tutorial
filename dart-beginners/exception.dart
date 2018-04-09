main()
{
  // Error is a program failure
  // Exemption - can be handled



  try{
    int age; 
    int dogYears = 8;

    if (dogYears != 7) throw new Exception("dog years must be 7!");
    if (age == null) throw new NullThrownError();

    print(age * dogYears);

  }
  on NullThrownError catch (e)
  {
    print("NullThrownError caught. Printing out error ==> ${e.toString()}");
  }
  on NoSuchMethodError catch (e)
  {
    print("No Such Method Error caught. Printing out error ==> ${e.toString()}");
  }
  catch (e)
  {
    print("There was an error:${e.toString()}");
  }
  finally 
  {
    print("Complete!");
  }
}