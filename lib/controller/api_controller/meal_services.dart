import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:learn_api/models/meal_model.dart';

class MealServices {
  static Future<List<Meals>> mealServices() async {

    try {
      Response response = await http.get(Uri.parse("http://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood"));
      if(response.statusCode==200){
        MealModel data = MealModel.fromJson(jsonDecode(response.body));
        return data.meals?? [];
      }
    } catch (e) {
    }
    return [];
  }
}
