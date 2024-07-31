import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class Nationalize{

  static Future<dynamic> nationalize() async {

    String url = "https://api.nationalize.io/?name=nathaniel";
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var data = jsonDecode(response.body);

    return data;
  }
}