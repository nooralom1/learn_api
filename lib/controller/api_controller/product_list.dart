import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:learn_api/models/productlist_model.dart';

class ProductListService {

  static Future<List<Products>> productListService() async {
    try{
      Response response = await http.get(Uri.parse("https://cit-ecommerce-codecanyon.bandhantrade.com/api/app/v1/products"));
      if (response.statusCode==200){
        ProductListModel data = ProductListModel.fromJson(jsonDecode(response.body));
       return data.products?? [];
      }
    }catch (e) {
      log("error: $e");
    }
    return [];
  }
}