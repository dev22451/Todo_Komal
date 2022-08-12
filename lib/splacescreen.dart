//splace screen

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
//         child: Column(
//       children: [
//         Image.network(
//           "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
//         ),
//       ],
//     ));
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
//           child: Text("komal"),
//         ),
//       ),
//     );
//   }
// }