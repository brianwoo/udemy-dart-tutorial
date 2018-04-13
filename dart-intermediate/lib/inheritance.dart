class Animal
{
  bool isAlive = true;

  void breath() => print("breathing");

  @override
  void test()
  {
    print("testing in Animal");
  }
}


class Mammal extends Animal
{
  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print("Walking");

  @override
  void test()
  {
    print("testing in Mammal");
    super.test();
  }
}


class Feline extends Mammal
{
  bool hasClaws = true;

  void growl() => print("grrrr");

  @override
  void test()
  {
    print("testing in feline");
    super.test();
  }
}


class Monster extends Feline with Ghost, Dragon
{
  bool glowInDark = true;

  @override
  void test()
  {
    print("Testing called in Monster!");
    
    // calling Feline.test() if Ghost and Dragon do not have test().
    // calling only Dragon.test() if both Ghost and Dragon have test().
    // if want to call Ghost.test(), then move Ghost, to the last of the line of Mixin after "with"
    // be really careful with Mixin inheritance
    super.test();
  }
}


class Ghost // Mixin classes cannot extends other classes
{
  bool walksThroughWalls = true;

  void test()
  {
    print("Testing called in Ghost!");
  }
}

class Dragon // Mixin classes cannot extends other classes
{
  bool breathsFire = true;

  void fly() => print("flying");


  // void test()
  // {
  //   print("Testing called in Dragon!");
  // }
}


void main()
{
  Feline cat = new Feline();
  cat.growl();
  cat.walk();
  cat.breath();
  cat.test();

  Monster ugly = new Monster();
  ugly.test();
  ugly.breathsFire = true;       // mixin
  ugly.walksThroughWalls = false; // mixin

}