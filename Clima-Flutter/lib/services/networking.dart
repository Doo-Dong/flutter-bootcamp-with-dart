import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future networking() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

//      String temp = data['main']['temp'].toString();
//      String id = data['weather'][0]['id'].toString();
//      String city = data['name'].toString();

//      print('$city\'s id = $id, temp = $temp');

      return data;
    } else {
      print(response.statusCode);
    }
  }
}
