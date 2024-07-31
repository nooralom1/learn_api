import 'package:flutter/material.dart';

class NationalizeScreen extends StatefulWidget {
  const NationalizeScreen({super.key});

  @override
  State<NationalizeScreen> createState() => _NationalizeScreenState();
}

class _NationalizeScreenState extends State<NationalizeScreen> {
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