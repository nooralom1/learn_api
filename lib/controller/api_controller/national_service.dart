import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:learn_api/models/national_model.dart';

class NationalService {
  static Future<List<Country>> nationalService() async {
    try {
      Response response = await http
          .get(Uri.parse("https://api.nationalize.io?name=nathaniel"));
      if (response.statusCode == 200) {
        NationalModel data = NationalModel.fromJson(jsonDecode(response.body));
        return data.country?? [];
      }
    } catch (e) {
    }
    return [];
  }
}
