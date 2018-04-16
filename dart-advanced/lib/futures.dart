import 'dart:io';
import 'dart:async';

main() {

  String path = Directory.current.path + '/test.txt';
  print("Appending to $path");

  File file = new File(path);
  Future<RandomAccessFile> f = file.open(mode: FileMode.APPEND);

  f.then((RandomAccessFile raf) {
    print("File has been opened!");

    raf.writeString("Hello World")
    .then((value) {
      print("file has been appended!");
    })
    .catchError(() => print("An Error Occurred"))
    .whenComplete(() => raf.close());
  });

  print("***** the end *****");

}