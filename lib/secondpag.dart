import 'package:flutter/material.dart';
import 'package:flutter_application_1/globaleVariable.dart';
import 'package:flutter_application_1/thirdpage.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            "SECOND PAGE",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(160),
          child: ButtonBar(children: [
            RaisedButton(
                child: Text("nextpage"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => third(),
                      ));
                })
          ]),
        )
      ]),
    );
  }
}
