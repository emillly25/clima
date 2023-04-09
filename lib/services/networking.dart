import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String url;
  NetworkHelper(this.url);

  Future getData() async {
    try {
      http.Response res = await http.get(
        Uri.parse(url),
      );
      if (res.statusCode == 200) {
        String data = res.body;
        return jsonDecode(data);
      } else {
        print(res.statusCode);
      }
    } catch (err) {
      print(err);
    }
  }
}
