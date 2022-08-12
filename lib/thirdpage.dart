import 'package:flutter/material.dart';
import 'package:flutter_application_1/globaleVariable.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(60),
          child: Text(
            "THIRD PAGE",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ButtonBar(children: [
            RaisedButton(
                child: Text("nextpage"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ]),
        ),
        Container(
            child: RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(title: Text("$getValue"));
                        });
                  });
                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(title: Text("$getValue"));
                  //     });
                }))
      ]),
    );
  }
}
