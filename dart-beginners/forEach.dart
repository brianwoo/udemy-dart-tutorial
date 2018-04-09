main() {

  List people = ["Brian", "Heather", "Chris"];

  for (int i=0; i < people.length; i++)
  {
    print("people at $i is ${people[i]}");
  }


  people.forEach((person) => print("forEach is $person"));


  for (String person in people)
  {
    print("for 2 is $person");
  }

}