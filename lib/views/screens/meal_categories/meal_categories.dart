import 'package:flutter/material.dart';
import 'package:learn_api/controller/api_controller/meal_categories.dart';
import 'package:learn_api/models/meal_categories_model.dart';


class MealCategoriesScreen extends StatefulWidget {
  const MealCategoriesScreen({super.key});

  @override
  State<MealCategoriesScreen> createState() => _MealCategoriesScreenState();
}

class _MealCategoriesScreenState extends State<MealCategoriesScreen> {
  List<Categories> data = [];

  getCategories() async {
    data= await MealCategoriesService.mealCategoriesService();
    setState(() {

    });
  }
  @override
  void initState() {
    getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Categories"),centerTitle: true,),
      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,index){
          return Container(
            height: 200,
            width: 200,
            color: Colors.green,
          );
          }),
    );
  }
}
