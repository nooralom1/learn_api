import 'package:flutter/material.dart';

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
        title: const Text("National"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async{
                },
                child: const Text("Call Api"))],
        ),
      ),
    );
  }
}