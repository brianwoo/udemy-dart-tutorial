import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';


main()
{
  Digest digest = new Digest("SHA-256");
  String value = "Hello World";

  Uint8List data = new Uint8List.fromList(UTF8.encode(value));
  Uint8List hash = digest.process(data);

  print(hash);
  print(BASE64.encode(hash));  // Encoding is NOT encryption!!!
}