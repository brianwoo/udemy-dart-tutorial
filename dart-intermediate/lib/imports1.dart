import 'dart:convert';
//import 'imports1.dart' as mycode;
import 'package:dart_intermediate/imports1_lib.dart' as mycode;


main(List<String> args)
{
  mycode.sayHello();

  String myvalue = "Hello World";
  List ebytes = UTF8.encode(myvalue);
  String encoded = BASE64.encode(ebytes);

  print("Encoded: $encoded");

  List dbytes = BASE64.decode(encoded);
  String decoded = UTF8.decode(dbytes);
  print("Dncoded: $decoded");
}