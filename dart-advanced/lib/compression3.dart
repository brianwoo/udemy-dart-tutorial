import 'dart:io';
import 'dart:convert';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

main()
{
  List files = new List();
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if (fse.statSync().type == FileSystemEntityType.FILE) 
    {
      //print("file is ${fse.path}");
      files.add(fse.path);
    }
      
  });

  String zipfile = "C:\\Users\\brian\\Projects\\udemy-dart-tutorial\\dart-advanced\\test.zip";
  zip(files, zipfile);

  unzip(zipfile, 'C:\\Users\\brian\\Projects\\udemy-dart-tutorial\\dart-advanced\\decompressed_files');
}


void zip(List<String> files, String file)
{
  Archive archive = new Archive();

  files.forEach((String path) {
    File file = new File(path);

    ArchiveFile archiveFile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });

  ZipEncoder encoder = new ZipEncoder();
  File f = new File(file);
  //print("zip file is ${f.path}");
  f.writeAsBytesSync(encoder.encode(archive));

  print("##### compressed");
}


void unzip(String zip, String path)
{
  File file = new File(zip);

  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());
  archive.forEach((ArchiveFile archiveFile) {
    File file = new File(path + "/" + archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });

  print("##### Decompressed");
}