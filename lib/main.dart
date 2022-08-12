import 'package:flutter/material.dart';
import 'package:flutter_application_1/Todo.dart';

void main() {
  runApp(MaterialApp(
    title: " Awesome APP",
    home: ToDoitem(),
  ));
}

class ToDoitem extends StatelessWidget {
  const ToDoitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: todoitem(),
    );
  }
}

class todoitem extends StatefulWidget {
  const todoitem({Key? key}) : super(key: key);

  @override
  State<todoitem> createState() => _todoitemState();
}

class _todoitemState extends State<todoitem> {
  final todosList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      "todo",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Color.fromARGB(255, 231, 228, 228),
                      leading: Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),
                      title: Text(
                        "komal",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: "add a new item",
                            border: InputBorder.none),
                      ),
                    )),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
