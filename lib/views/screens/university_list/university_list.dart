import 'package:flutter/material.dart';


class UniversityListScreen extends StatefulWidget {
  const UniversityListScreen({super.key});

  @override
  State<UniversityListScreen> createState() => _UniversityListScreenState();
}

class _UniversityListScreenState extends State<UniversityListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University List"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
