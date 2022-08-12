// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "awesome app",
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Comment(),
//     );
//   }
// }

// class Comment extends StatefulWidget {
//   const Comment({Key? key}) : super(key: key);

//   @override
//   State<Comment> createState() => _CommentState();
// }

// class _CommentState extends State<Comment> {
//   TextEditingController myController = new TextEditingController();
//   String getvalue = '';

//   @override
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("My App")),
//         body: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(7.0),
//               child: Column(
//                 children: [
//                   Container(
//                       child: Text(
//                           "Raksha Bandhan is observed on the last day of the Hindu lunar calendar month of Shraavana which typically falls in August The expression Raksha Bandhan Sanskrit literally the bond of protection obligation or care is now principally applied to this ritual......")),
//                   Container(
//                     padding: EdgeInsets.only(right: 100, top: 10, bottom: 10),
//                     child: Text(
//                       "User Comments on Post",
//                       style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10.0),
//                     child: Column(
//                       children: [Text("$getvalue")],
//                     ),
//                   ),
//                   Container(
//                     child: Column(children: [
//                       Container(
//                         padding: EdgeInsets.all(5.0),
//                         child: TextField(
//                           controller: myController,
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                           ),
//                           keyboardType: TextInputType.multiline,
//                           textInputAction: TextInputAction.newline,
//                           minLines: 1,
//                           maxLines: 6,
//                         ),
//                       ),
//                       Container(
//                         child: RaisedButton(
//                           child: Text('Submit'),
//                           onPressed: () {
//                             setState(() {
//                               getvalue = myController.text;
//                               myController.clear();
//                             });
//                             // showDialog(
//                             //   context: context,
//                             //   builder: (context) {
//                             //     // return AlertDialog(
//                             //     //   // Retrieve the text the that user has entered by using the
//                             //     //   // TextEditingController.
//                             //     // content:
//                             //     //Text(myController.text);
//                             //     // );
//                             //   },
//                             // );
//                           },
//                         ),
//                       ),
//                     ]),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
