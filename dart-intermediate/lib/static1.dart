class Animal
{
  static int _counter = 0;

  Animal()
  {
    _counter++;
    print("There are ${_counter} of us");
  }

  static void run()
  {
    print("running");
  }

  static void speak()
  {
    print("Speak");
    run();
    // this.toString(); // it's static
  }
}




main()
{
  Animal cat = new Animal();
  Animal dog = new Animal();
  Animal bird = new Animal();
  Animal fish = new Animal();

  Animal.run();
}