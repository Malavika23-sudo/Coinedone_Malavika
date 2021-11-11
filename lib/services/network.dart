import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Future<dynamic> getTimeDatas(
      ) async {

    String url = 'https://api.mocklets.com/p68289/screentime';
    http.Response response = await http.get(Uri.parse(url.toString()));
    var Data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Data;
    } else {
      print(response.statusCode);
    }
  }
}
