import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controler.dart';
import 'second.dart';
import 'date.dart';

//import 'package:get/get.dart';
//import 'controler.dart';

void main() {
  runApp(Todo());
}

// class TodoItem {
//   final String name;
//   final bool checked;

//   TodoItem({required this.checked, required this.name});

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TodoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todoController countController = Get.put(todoController());
  // final List<String> _todoList = <String>[];
  bool isChecked = false;
  // final TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: ListView(children: _getItems()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _awaitReturnValueFromSecondScreen(context);
        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }

  void _addTodoItem(String title) {
    countController.textAdd(title);

    countController.textFieldController.clear();
  }

  Widget _buildTodoItem(String title) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.teal,
        leading: Checkbox(
          value: isChecked,
          activeColor: Colors.white,
          checkColor: Colors.black,
          onChanged: (Value) {
            setState(() {
              isChecked = Value!;
              //int index = countController.todoList.indexOf(title);

              //countController.todoList[index];
              // print(index);
              if (Value) {
                isChecked = true;
              } else {
                print('unchacked true');
              }
            });
          },
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              color: Colors.white,
              iconSize: 22,
              onPressed: () {
                //Navigator.of(context)
                Get.to(() => const HomePage());
                //.push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.date_range),
            ),
            IconButton(
                color: Colors.white,
                iconSize: 22,
                onPressed: () {},
                icon: const Icon(Icons.edit)),
            IconButton(
                color: Colors.white,
                iconSize: 22,
                onPressed: () {
                  setState(() {
                    countController.todoList.remove(title);
                  });
                },
                icon: const Icon(Icons.delete)),
          ],
        ),
        // trailing: Container(
        //   padding: EdgeInsets.all(0),
        //   margin: EdgeInsets.symmetric(vertical: 12),
        //   height: 35,
        //   width: 35,
        //   decoration: BoxDecoration(
        //       color: Colors.white, borderRadius: BorderRadius.circular(5)),
        //   child: IconButton(
        //     color: Colors.red,
        //     iconSize: 18,
        //     icon: Icon(Icons.delete),
        //     onPressed: () {
        //       setState(() {
        //         countController.todoList.remove(title);
        //       });
        //     },
        //   ),
        // ),
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
    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondRoute(),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      _addTodoItem(result);
    });
  }
}
