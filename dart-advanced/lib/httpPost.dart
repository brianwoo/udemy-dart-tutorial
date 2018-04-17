import 'package:http/http.dart' as http;

main(List<String> args) async
{
  
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'name=Bryan&color=blue');

  print("Response Status ${response.statusCode}");
  print("Response body ${response.body}");
}