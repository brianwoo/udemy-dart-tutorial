import 'dart:typed_data';
import 'dart:convert';
import 'package:pointycastle/pointycastle.dart';
import 'package:collection/collection.dart';
import 'dart:math';



main()
{
  final key = randomBytes(16);
  final params = new KeyParameter(key);

  BlockCipher cipher = new BlockCipher("AES");
  cipher.init(true, params);

  String plainText = "Hello World";
  Uint8List plainData = createUint8ListFromString(plainText.padRight(cipher.blockSize));
  Uint8List encryptedData = cipher.process(plainData);

  // Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decryptedData = cipher.process(encryptedData);

  display("Plain Text", plainData);
  display("Encrypted Text", encryptedData);
  display("Decrypted Text", decryptedData);

  Function eq = const ListEquality().equals;
  assert(eq(plainData, decryptedData));

  print(UTF8.decode(decryptedData).trim());
}


Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(UTF8.encode(value));

void display(String title, Uint8List value)
{
  print(title);
  print(value);
  print(BASE64.encode(value));
  print(" ");
}


Uint8List randomBytes(int length)
{
  final rnd = new SecureRandom("AES/CTR/AUTO-SEED-PRNG");

  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);

  var random = new Random();

  for (int i=0; i < random.nextInt(255); i++)
  {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}