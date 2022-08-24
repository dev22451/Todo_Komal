// ignore_for_file: unused_import, avoid_print

import 'main.dart';
import 'second.dart';
import 'package:flutter/material.dart';
import 'date.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class todoController extends GetxController {
  final List<String> todoList = <String>[].obs;
  final TextEditingController textFieldController = TextEditingController();

  void textAdd(value) {
    todoList.add(value);

    int index = todoList.indexOf(value);
    print({todoList});
  }

  List<String> getList() {
    return todoList;
  }
}
