import 'dart:io';
import 'dart:convert';


main() {
  String data = '';
  for (int i=0; i < 100; i++)
  {
    data = data + "Hello world\r\n";
  }

  // original data
  List original = UTF8.encode(data);

  // compress data
  List compressed = GZIP.encode(original);

  // decompress data
  List decompress = GZIP.decode(compressed);

  print("orig ${original.length}");
  print("compressed ${compressed.length}");
  print("decompress ${decompress.length}");

  String decoded = UTF8.decode(decompress);
  assert(data == decoded);
}