import "dart:io";


main(List<String> args)
{
  Directory dir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + "/myfile.txt");

  writeFile(file);
  readFile(file);

}



void writeFile(File file)
{
  // append, write

  RandomAccessFile raf = file.openSync(mode: FileMode.APPEND);
  raf.writeStringSync('Hello World!\r\nHow are you doing?');
  raf.flushSync();
  raf.closeSync();
}


void readFile(File file)
{
  if (!file.existsSync())
  {
    print("file not found!");
    return;
  }
  else
  {
    print("Reading string...");
    print(file.readAsStringSync());

    print("Reading byte...");
    List values = file.readAsBytesSync();
    values.forEach((value) {
      print(value);
    });
  }
}