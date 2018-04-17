import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';

ConnectionPool getPool()
{
  var pool = new ConnectionPool
  (
    host: '',
    port: 3306,
    user: '',
    password: '',
    db: '',
    max: 5
  );

  return pool;
}