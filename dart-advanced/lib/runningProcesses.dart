import "dart:io";


main(List<String> args)
{
  // list all files in a directory
  Process.run('c:\\Windows\\System32\\cmd.exe', [''])
  .then((ProcessResult results) {
    print(results.stdout);
    print("Exit code: ${results.exitCode}");
  });
}