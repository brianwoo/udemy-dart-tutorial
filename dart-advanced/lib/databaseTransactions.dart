import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';
import 'dart:io';
import 'dart:async';
import 'package:dart_advanced/databaseGetPool.dart';


main() async
{
  var pool = getPool();

  var trans = await pool.startTransaction();

  try
  {
    int id = await insert(pool, "Aassy", "Dart");
    int person = await find(pool, "Bob1");
    await delete(pool, person);

    await trans.commit();
    print("Done!");
  }
  catch (err)
  {
    print(err.toString());
    await trans.rollback();
  }
  finally
  {
    pool.closeConnectionsNow();
    exit(0);
  }
}


Future<int> find(var pool, String name) async
{
  Query query = await pool.prepare("select idteachers from teachers where name=?");
  Results results = await query.execute([name]);
  Row row = await results.first;
  return row[0];
}


Future<int> insert(var pool, String name, String topic) async 
{
  Query query = await pool.prepare("insert into teachers (name, topic) values (?,?)");
  Results results = await query.execute([name, topic]);
  return results.insertId;
}

Future delete(var pool, int value) async 
{
  Query query = await pool.prepare("delete from teachers where idteachers = ?");
  Results results = await query.execute([value]);
}


