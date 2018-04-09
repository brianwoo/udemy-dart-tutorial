import 'dart:io';
import 'dart:async';

main() {
  stdout.write("What is your name?\r\n");

  String name = stdin.readLineSync();

  name.isEmpty ? stderr.write("Name is empty") : stdout.write("name = $name");

  // print("name = $name");
  // stdout.write("name = $name");

}