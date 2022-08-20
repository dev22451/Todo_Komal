import 'main.dart';
import 'second.dart';
import 'package:flutter/material.dart';
import 'date.dart';
import 'package:get/get.dart';

class todoController extends GetxController {
  final List<String> todoList = <String>[].obs;
  final TextEditingController textFieldController = TextEditingController();

  void textAdd(value) {
    todoList.add(value);
    int index = todoList.indexOf(value);
    print({todoList});
  }
}
