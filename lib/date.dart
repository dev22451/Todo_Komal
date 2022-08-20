import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date&Time"),
        backgroundColor: Colors.teal,
      ),
      body: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.star,
              size: 30,
              color: Colors.teal,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          Text(
            "go back",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
                primary: Colors.teal,
              ),
              onPressed: () {
                Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.teal);
              },
              child: const Text('Show Snackbar',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        ],
      ),

//       body: Container(
//           child: IconButton(
//         icon: Icon(
//           Icons.star,
//         ),

//         onPressed: () {
//           Get.back();
//         },

//       ),

// ),
    );
  }
}
