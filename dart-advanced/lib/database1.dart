import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';
import 'dart:io';
import 'package:dart_advanced/databaseGetPool.dart';


main() async
{
  var pool = getPool();

  var results = await pool.query('Select * from teachers');

  print("Results ${await results.length} rows");
  pool.closeConnectionsNow();
  exit(0);
}
