import 'dart:collection';

main() {

  // List
  List list = new List<int>();
  list.add(2);
  list.add(3);
  list.add(4);

  print("list = $list");


  // Set
  Set<int> numbers = new Set<int>();

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(1); // added twice

  print("numbers = $numbers");


  // Queue
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);

  items.removeFirst();
  items.removeLast();

  print(items);


  // Map
  // Map people = {'dad': 'Bryan', 'son': 'Chris', 'daughter': 'Heather'};

  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'Bryan');

  print(people);
  print(people.keys);
  print(people.values);
  print(people['dad']);
}