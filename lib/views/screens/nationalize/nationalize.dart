import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:learn_api/controller/api_controller/nationalize.dart';

class NationalScreen extends StatefulWidget {
  const NationalScreen({super.key});

  @override
  State<NationalScreen> createState() => _NationalScreenState();
}

class _NationalScreenState extends State<NationalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("National"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async{
                  var call = await Nationalize.nationalize();
                  print("===========");
                  print("${call}");
                },
                child: Text("Call Api"))],
        ),
      ),
    );
  }
}