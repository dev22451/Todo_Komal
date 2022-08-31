// ignore_for_file: unused_import, avoid_print

import 'main.dart';
import 'second.dart';
import 'package:flutter/material.dart';
import 'date.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class todoController extends GetxController {
  final List<String> todoList = <String>[].obs;
  final List<String> dateList = <String>[].obs;
  final List<String> endList = <String>[].obs;
  final TextEditingController textFieldController = TextEditingController();

  void textAdd(value) {
    todoList.add(value);

    // print({dateList});
  }

  List<String> getList() {
    return todoList;
  }

  void dateadd(value) {
    dateList.add(value);
  }

  void enddate(value) {
    endList.add(value);
    print(endList);
  }
}
