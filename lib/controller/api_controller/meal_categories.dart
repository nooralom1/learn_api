import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:learn_api/models/meal_categories_model.dart';

class MealCategoriesService{
  static Future<List<Categories>> mealCategoriesService() async {
    Response response = await http.get(Uri.parse("www.themealdb.com/api/json/v1/1/categories.php"));
    if(response.statusCode==200){
      MealCategoriesModel data = MealCategoriesModel.fromJson(jsonDecode(response.body));
      return data.categories?? [];
    }
    return[];
  }
}