import 'package:flutter/material.dart';
import 'package:learn_api/controller/api_controller/national_service.dart';
import 'package:learn_api/models/national_model.dart';

class NationalScreen extends StatefulWidget {
  const NationalScreen({super.key});

  @override
  State<NationalScreen> createState() => _NationalScreenState();
}

class _NationalScreenState extends State<NationalScreen> {
  List<Country> data = [];
  receiveData() async {
    data = await NationalService.nationalService();
    setState(() {});
  }

  @override
  void initState() {
    receiveData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("National"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: const Color(0xffffb3e6),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xffb3fff0),
                    child: Text(
                      "${data[index].countryId}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  title: const Text(
                    "probability:",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff0000)),
                  ),
                  subtitle: Text(
                    "${data[index].probability}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }));
  }
}
