import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';


main()
{
  String password = "password";

  var salt = createUint8ListFromString('salt');
  var pkcs = new KeyDerivator("SHA-1/HMAC/PBKDF2");
  var params = new Pbkdf2Parameters(salt, 100, 16);

  pkcs.init(params);

  Uint8List key = pkcs.process(createUint8ListFromString(password));

  display('key value', key);
}


Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(UTF8.encode(value));

void display(String title, Uint8List value)
{
  print(title);
  print(value);
  print(BASE64.encode(value));
  print(" ");
}