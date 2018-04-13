abstract class Car
{
  bool hasWheels;
  bool hasHorn;

  void honk() 
  {
    print("jeep jeep jeep");
  }
}



class RaceCar extends Car
{
  RaceCar()
  {
    this.hasHorn = true;
    this.hasWheels = true;
  }

  @override
  void honk() 
  {
    print("beep beep");
    super.honk();
  }
  
}



void main()
{
  RaceCar rCar = new RaceCar();
  rCar.honk();
}