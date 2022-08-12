// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/globaleVariable.dart';

// void main() {
//   runApp(MaterialApp(
//     title: " Awesome APP",
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Fpage(),
//     );
//   }
// }

// class Fpage extends StatefulWidget {
//   const Fpage({Key? key}) : super(key: key);

//   @override
//   State<Fpage> createState() => _FpageState();
// }

// class _FpageState extends State<Fpage> {
//   TextEditingController myController = new TextEditingController();
//   String getvalue = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("FirstPage"),
//       ),
//       body: Column(children: [
//         Container(
//           padding: EdgeInsets.all(20),
//           child: ButtonBar(children: [
//             // Text("$getvalue"),
//             RaisedButton(
//                 child: Text("nextpage"),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => second(),
//                       ));
//                 })
//           ]),
//         ),
//         Container(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               controller: myController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.multiline,
//               textInputAction: TextInputAction.newline,
//               maxLines: 1,
//             )),
//         Container(
//             child: RaisedButton(
//                 child: Text('Submit'),
//                 onPressed: () {
//                   setState(() {
//                     getvalue = myController.text;
//                     myController.clear();
//                   });
//                 }))
//       ]),
//     );
//   }
// }
