// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'controler.dart';
import 'second.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final startdate = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date&Time"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 30),
            // ignore: prefer_const_constructors
            child: Text(
              "Start date",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
          Text(
            "${startdate.read('Date')}",
            style: const TextStyle(fontSize: 20),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 30),
            child: const Text(
              "End date",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
          Text(
            "${startdate.read('Date')}",
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
