// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'controler.dart';
import 'second.dart';
import 'date.dart';
import 'login.dart';
import 'enddate.dart';

void main() async {
  await GetStorage.init();
  runApp(const Todo());
}

// class TodoItem {
//   final String name;
//   final bool checked;

//   TodoItem({required this.checked, required this.name});
// }

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todoController countController = Get.put(todoController());
  late List<bool> _isChecked;
  final registerdata = GetStorage();
//final enddate = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 22,
            onPressed: () {
              Get.to(() => const HomePage());
            },
            icon: const Icon(Icons.date_range),
          ),
          IconButton(
            color: Colors.white,
            iconSize: 22,
            onPressed: () {
              Get.to(() => const Enddate());
            },
            icon: const Icon(Icons.delete_outline_outlined),
          ),
          IconButton(
              color: Colors.white,
              iconSize: 22,
              onPressed: () {
                registerdata.remove("name");
                registerdata.remove("password");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      // backgroundColor: Colors.white,
      body: ListView(children: _getItems()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _awaitReturnValueFromSecondScreen(context);
        },
        tooltip: 'Add Item',
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addTodoItem(String title) {
    countController.textAdd(title);
    _isChecked = List<bool>.filled(countController.getList().length, false);
    countController.textFieldController.clear();
  }

  Widget _buildTodoItem(String title) {
    int index = countController.todoList.indexOf(title);

    return Container(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.teal,
        leading: Checkbox(
          value: _isChecked[index],
          activeColor: Colors.white,
          checkColor: Colors.black,
          onChanged: (Value) {
            setState(() {
              _isChecked[index] = Value!;
            });
          },
        ),
        title: Text(
          title,
          style: _chekedStyle(_isChecked[index]),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                color: Colors.white,
                iconSize: 22,
                onPressed: () {},
                icon: const Icon(Icons.edit)),
            IconButton(
                color: Colors.white,
                iconSize: 22,
                onPressed: () {
                  String datetime = DateTime.now().toString();
                  enddate(datetime);

                  // ignore: avoid_print
                  // print(datetime);
                  // enddate.write("EndDate", datetime);
                  setState(() {
                    countController.todoList.remove(title);
                  });
                },
                icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }

  List<Widget> _getItems() {
    final List<Widget> todoWidgets = <Widget>[];
    for (String title in countController.todoList) {
      todoWidgets.add(_buildTodoItem(title));
    }
    return todoWidgets;
  }

  void _awaitReturnValueFromSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondRoute(),
        ));

    setState(() {
      _addTodoItem(result);
    });
  }

  void enddate(String datetime) {
    countController.enddate(datetime);
  }
}

_chekedStyle(isChecked) {
  if (!isChecked) {
    return const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);
  }
  return const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal);
}
