import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';
import 'dart:io';
import 'package:dart_advanced/databaseGetPool.dart';


main() async
{
  var pool = getPool();

  var query = await pool.prepare("insert into teachers (name, topic) values (?,?)");
  await insert(query, 'Bob', "Science");
  await insert(query, 'Mary', "Shop");
}



void insert(var query, String name, String topic) async {

  var result = await query.execute([name, topic]);
  print("New user id = ${result.insertId}");
}
