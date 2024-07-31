import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Icon(Icons.home,color: Colors.blue,size: 50,),
      ),
    );
  }
}
