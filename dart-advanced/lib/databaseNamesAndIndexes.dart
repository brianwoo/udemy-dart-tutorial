import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';
import 'dart:io';
import 'package:dart_advanced/databaseGetPool.dart';


main() async
{
  var pool = getPool();

  var results = await pool.query("select name, topic from teachers");

  await results.forEach((row) {
    print("Name: ${row[0]}, Topic: ${row.topic}");
  });

  pool.closeConnectionsNow();
  exit(0);
}



void insert(var query, String name, String topic) async {

  var result = await query.execute([name, topic]);
  print("New user id = ${result.insertId}");
}
