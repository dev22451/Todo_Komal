// ignore_for_file: unused_import
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'login.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final registerdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register page"),
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
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
                  "Register page",
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
                  // ignore: prefer_const_constructors
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUAv2SzopG8pBzJhCxKprxgPEQb5pH1g44jQ&usqp=CAU",
                  )),
              //   "sign in",
              //   style: TextStyle(fontSize: 20),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                // keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.characters,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "User name",
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
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.teal)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (value != passwordController.text) {
                    return "not match";
                  }
                  return null;
                },
                obscureText: true,
                controller: confirmpasswordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.teal)),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: const Text("sign in"),
                  onPressed: () {
                    registerdata.write("name", nameController.text);
                    registerdata.write("password", passwordController.text);
                    registerdata.write(
                        "confirmpassword", confirmpasswordController.text);
                    // Navigator.pop(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => LoginPage(),
                    // ));
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                      // print(registerdata.read("name"));
                      // print(registerdata.read("password"));
                      // print(registerdata.read("confirmpassword"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account?',
                    style: TextStyle(
                      color: Colors.teal,
                    )),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.teal),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
