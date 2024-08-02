import 'package:flutter/material.dart';
import 'package:learn_api/views/screens/meal/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MealScreen(),
    );
  }
}
