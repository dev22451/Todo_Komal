import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: " Awesome APP",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Todoapp(),
    );
  }
}

class Todoapp extends StatefulWidget {
  const Todoapp({Key? key}) : super(key: key);

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
    );
  }
}

//******************************* */
// import 'dart:async';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "awesome app",
//     home: homepage(),
//   ));
// }

// class homepage extends StatelessWidget {
//   homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: firstscreen(),
//     );
//   }
// }

// class firstscreen extends StatefulWidget {
//   const firstscreen({Key? key}) : super(key: key);

//   @override
//   State<firstscreen> createState() => _firstscreenState();
// }

// class _firstscreenState extends State<firstscreen> {
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 15),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => secondscreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child: Column(
//           children: [
//             Padding(padding: EdgeInsets.only(top: 250)),
//             Center(
//               child: Image.network(
//                 "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
//               ),
//             )
//           ],
//         ));
//   }
// }

// class secondscreen extends StatelessWidget {
//   secondscreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("second page"),
//       ),
//       body: Container(
//         child: Center(
//           child: Icon(
//             Icons.person_add_alt_rounded,
//             size: 60,
//             color: Colors.blueAccent,
//           ),
//         ),
//       ),
//     );
//   }
// }
//******************************** */

// import 'package:flutter_application_1/globaleVariable.dart';
// import 'package:flutter_application_1/secondpag.dart';

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

//second page
// class second extends StatefulWidget {
//   const second({Key? key}) : super(key: key);

//   @override
//   State<second> createState() => _secondState();
// }

// class _secondState extends State<second> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SecondPage"),
//       ),
//       body: Column(children: [
//         Container(
//           padding: EdgeInsets.all(20),
//           child: Text(
//             "SECOND PAGE",
//             style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(160),
//           child: ButtonBar(children: [
//             RaisedButton(
//                 child: Text("nextpage"),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => third(),
//                       ));
//                 })
//           ]),
//         )
//       ]),
//     );
//   }
// }

////third page
// class third extends StatefulWidget {
//   const third({Key? key}) : super(key: key);

//   @override
//   State<third> createState() => _thirdState();
// }

// class _thirdState extends State<third> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ThirdPage"),
//       ),
//       body: Column(children: [
//         Container(
//           padding: EdgeInsets.all(60),
//           child: Text(
//             "THIRD PAGE",
//             style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(10),
//           child: ButtonBar(children: [
//             RaisedButton(
//                 child: Text("nextpage"),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 })
//           ]),
//         ),
//         Container(
//             child: RaisedButton(
//                 child: Text('Submit'),
//                 onPressed: () {
//                   setState(() {
//                     showDialog(
//                         context: context,
//                         builder: (context) {
//                           return AlertDialog(title: Text("$getValue"));
//                         });
//                   });
//                   // showDialog(
//                   //     context: context,
//                   //     builder: (context) {
//                   //       return AlertDialog(title: Text("$getValue"));
//                   //     });
//                 }))
//       ]),
//     );
//   }
// }

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
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
// home: Comment(),
// );
//   }
// }
// class Comment extends StatefulWidget {
//   const Comment({Key? key}) : super(key: key);

//   @override
//   State<Comment> createState() => _CommentState();
// }

// class _CommentState extends State<Comment> {
//   @override
//   Widget build(BuildContext context) {
//     return sc
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     title: "Awesome App",
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//   State<HomePage> createState() => _homepageState();
// }

// class _homepageState extends State<HomePage> {
//   bool _isFavorited = true;
//   int count = 41;
//   void toggle() {
//     setState(() {
//       if (_isFavorited) {
//         count -= 1;
//         _isFavorited = false;
//       } else {
//         count += 1;
//         _isFavorited = true;
//       }
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("flutter app"),
//       ),
//       body: Center(
//           child: Container(
//         padding: EdgeInsets.only(left: 30),
//         height: 200,
//         width: 200,
//         color: Color.fromARGB(255, 231, 218, 218),
//         child: Row(
//           children: [
//             IconButton(
//               icon: (_isFavorited
//                   ? const Icon(
//                       Icons.star,
//                       size: 50,
//                     )
//                   : const Icon(
//                       Icons.star_border,
//                       size: 50,
//                     )),
//               color: Colors.red,
//               onPressed: toggle,
//             ),
//             Container(
//                 margin: EdgeInsets.all(20),
//                 child: Row(children: [
//                   Text(
//                     '$count',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ]
//                     // Icon(
//                     //   Icons.star_border,
//                     //   size: 50,
//                     // ),
//                     //  Text("40",
//                     //    style: TextStyle(
//                     //    fontSize: 40,
//                     //    fontWeight: FontWeight.bold,
//                     )) // ))
//           ],
//         ),
//       )),
//     );
//   }
// }
// body: Center(
//           child: Container(
//         // padding: EdgeInsets.all(15),
//         // alignment: Alignment.center,
//         // color: Colors.teal,
//         width: 100,
//         height: 100,
// body: Column(
//   children: [
//     Container(
//       child: Row(children: [
//         Container(
//             width: 411,
//             child: Column(
//               children: [
//                 Image.network(
//                   "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
//                 ),
//               ],
//             )),
//       ]),

// Image.network(
//     "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
// SizedBox(height: 20),
// Text(
//   "change me",
//   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// ),
// SizedBox(
//   height: 20,
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: TextField(
//     decoration: InputDecoration(hintText: "enter something here"),
//   ),
// ),
//       ),
//       Container(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 Padding(padding: EdgeInsets.only(top: 10)),
//                 Text(
//                   "Oeschinen Lake",
//                   style:
//                       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 )
//               ],
//             ),
//             Padding(padding: EdgeInsets.only(left: 100)),
//             Column(
//               children: [
//                 Icon(
//                   Icons.star,
//                   color: Colors.red,
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 Text(
//                   "41",
//                   style:
//                       TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.only(left: 10),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 Text(
//                   "Kandersteg",
//                   style: TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.normal),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.only(top: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 Icon(
//                   Icons.call,
//                   color: Colors.blue,
//                   size: 30,
//                 ),
//                 Text(
//                   "Call",
//                   style:
//                       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(
//                   Icons.route,
//                   color: Colors.blue,
//                   size: 30,
//                 ),
//                 Text(
//                   "Route",
//                   style:
//                       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Icon(
//                   Icons.share,
//                   color: Colors.blue,
//                   size: 30,
//                 ),
//                 Text(
//                   "Share",
//                   style:
//                       TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       Container(
//           padding: EdgeInsets.all(15),
//           child: Text(
//             "Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top ...",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ))
//     ],
//   ),
// );

// drawer: Drawer(
//   child: ListView(
//     padding: EdgeInsets.zero,
//     children: [
//       UserAccountsDrawerHeader(
//         accountName: const Text("komal"),
//         accountEmail: const Text("komal.fogawat@gmail.com"),
//         currentAccountPicture: CircleAvatar(
//           backgroundImage: NetworkImage(
//               "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
//         ),
//       ),

// DrawerHeader(
//   child: Text(
//     "hii komal",
//     style: TextStyle(color: Colors.white),
//   ),
//   decoration: BoxDecoration(color: Colors.purpleAccent),
// ),
//   ListTile(
//     leading: Icon(Icons.person),
//     title: Text("Account"),
//     subtitle: Text("person"),
//     trailing: Icon(Icons.edit),
//   ),
//   ListTile(
//     leading: Icon(Icons.email),
//     title: Text("Email"),
//     subtitle: Text("komal.fogawat@gmail.com"),
//     trailing: Icon(Icons.send),
//   ),
// );

// body: Center(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Container(
//         width: 100,
//         height: 100,
//         color: Colors.red,
//       ),
//       Container(
//         width: 100,
//         height: 100,
//         color: Colors.red,
//       ),
//       Container(
//         width: 100,
//         height: 100,
//         color: Colors.red,
//       )
//     ],
//   ),
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       boxShadow: [
//         BoxShadow(
//             color: Color.fromARGB(255, 112, 112, 112),
//             blurRadius: 5,
//             offset: Offset(2.0, 5.0))
//       ],
//       color: Colors.teal,
//       gradient: LinearGradient(colors: [Colors.pink, Colors.yellow])),
//   child: Text(
//     "komal",
//     textAlign: TextAlign.center,
//     style: TextStyle(
//       color: Colors.white,
//       fontWeight: FontWeight.bold,
//       fontSize: 20,
//     ),
//   ),
//child: Center(child: Text("hii komal")),
//}
