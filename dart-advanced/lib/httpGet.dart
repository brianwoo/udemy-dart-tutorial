import 'package:http/http.dart' as http;
import 'dart:async';

main(List<String> args) async
{
  
  var url = 'http://httpbin.org';
  var response = await http.get(url);

  print("Response Status ${response.statusCode}");
  print("Response body ${response.body}");
}