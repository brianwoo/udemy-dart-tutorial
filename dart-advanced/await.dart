import 'dart:io';
import 'dart:async';

main(List<String> args) async
{
  print("*** Starting");

  // If a function returns a future,
  // use await can wait till the future is done its execution
  // and get back the actual object.
  File file = await appendFile();

  print("Appended to file ${file.path}");

  print("*** end");
}


Future<File> appendFile()
{
  File file = new File(Directory.current.path + "/test.txt");
  DateTime now = new DateTime.now();

  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.APPEND);
}
