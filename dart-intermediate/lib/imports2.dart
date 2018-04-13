import 'package:http/http.dart' as http;

main(List<String> args) 
{

  var url = "http://www.voidrealms.com";

  http.get(url).then((response) {
    print("response code = ${response.statusCode}");
    print("response body = ${response.body}");
  });

}