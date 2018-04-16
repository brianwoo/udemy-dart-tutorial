import 'dart:io';

main() {

  print("OS: ${Platform.operatingSystem} ${Platform.version}");

  if (Platform.isWindows)
  {
    print("Run windows code");
  }
  else
  {
    print("run normal code");
  }

  print("Path: ${Platform.script.path}");
  print("Path: ${Platform.executable}");

  print("Env:");
  Platform.environment.keys.forEach((key) {
    print("${key} ${Platform.environment[key]}");
  });

}