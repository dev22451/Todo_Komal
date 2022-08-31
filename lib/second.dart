// ignore: unused_import
import 'main.dart';
import 'package:flutter/material.dart';
import 'controler.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:get_storage/get_storage.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  final todoController countController = Get.put(todoController());
  //final startdate = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add-Todo-List"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: TextField(
          controller: countController.textFieldController,
          decoration: const InputDecoration(
            filled: true, //<-- SEE HERE
            fillColor: Colors.teal,
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.star,
              color: Colors.white,
            ),
            hintStyle: TextStyle(color: Colors.white),
            hintText: 'Enter task here',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: const Text("add"),
          onPressed: () {
            String datetime = DateTime.now().toString();
            dateAdd(datetime);
            // ignore: avoid_print
            //print(datetime);
            // startdate.write("Date", datetime);
            //Text('$datetime'); //2022
            _sendDataBack(context);
          }),
    );
  }

  void _sendDataBack(BuildContext context) {
    Navigator.pop(context, countController.textFieldController.text);
  }

  void dateAdd(String datetime) {
    countController.dateadd(datetime);
  }
}
