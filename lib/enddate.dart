// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'controler.dart';
import 'second.dart';

class Enddate extends StatefulWidget {
  const Enddate({Key? key}) : super(key: key);

  @override
  State<Enddate> createState() => EnddateState();
}

class EnddateState extends State<Enddate> {
  final todoController countController = Get.put(todoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date&Time"),
        backgroundColor: Colors.teal,
      ),
      body: Obx(
        () => ListView(
          children: countController.endList.map((value) {
            return Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(20)),
                const Text(
                  "END DATE :",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.teal),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                ),
                Text(
                  value,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
