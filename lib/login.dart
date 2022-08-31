// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'main.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginidController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final registerdata = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login PAGE"),
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "login page",
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: Image(
                  width: 90,
                  height: 90,
                  image: const NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwcHV1Mnp_ODpz38LZGYmlgfGT6AuPuvXE2A&usqp=CAU",
                  )),
              //   "sign in",
              //   style: TextStyle(fontSize: 20),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                textCapitalization: TextCapitalization.characters,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (registerdata.read("name") != loginidController.text) {
                    return "id not match";
                  }
                  return null;
                },
                controller: loginidController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "user name",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.teal)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (registerdata.read("password") !=
                      loginpasswordController.text) {
                    return "password not match";
                  }
                  return null;
                },
                obscureText: true,
                controller: loginpasswordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.teal)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot Password',
                  style: TextStyle(
                    color: Colors.teal,
                  )),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: const Text('Login'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TodoList(),
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    // print(loginidController.text);
                    // print(loginpasswordController.text);
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Does not have account?',
                    style: TextStyle(
                      color: Colors.teal,
                    )),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20, color: Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registerpage(),
                        ));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
