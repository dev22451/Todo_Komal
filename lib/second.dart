import 'main.dart';
import 'package:flutter/material.dart';
import 'controler.dart';
import 'package:get/get.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
//class SecondRoute extends StatelessWidget {
  final todoController countController = Get.put(todoController());

  @override
  Widget build(BuildContext context) {
    //final TextEditingController _textFieldController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add-Todo-List"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
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
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Text("add"),
          onPressed: () {
            _sendDataBack(context);
          }),
    );
  }

  void _sendDataBack(BuildContext context) {
    Navigator.pop(context, countController.textFieldController.text);
  }
  // void _sendDataToFirstScreen(BuildContext context) {
  //   String textToSend = _textFieldController.text;
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => TodoList(context, textToSend),
  //       ));
  // }
}
