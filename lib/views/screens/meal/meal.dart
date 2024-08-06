import 'package:flutter/material.dart';
import 'package:learn_api/controller/api_controller/meal_services.dart';
import 'package:learn_api/models/meal_model.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({super.key});

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {

  List<Meals> data = [];
  nData() async {
    data = await MealServices.mealServices();
    setState(() {});
  }
  @override
  void initState() {
    nData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: data.isEmpty? const Center(child: CircularProgressIndicator(),) : ListView.builder(
        itemCount: data.length,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              minTileHeight: 100,
              tileColor: const Color(0xffcc99ff),
              leading: Image.network("${data[index].strMealThumb}",fit: BoxFit.fill,width: 80,),
              title: Text("${data[index].strMeal}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              trailing: Text("${data[index].idMeal}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          );
          }),
      backgroundColor: const Color(0xffccffe6),
    );
  }
}
