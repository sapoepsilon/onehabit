import 'package:flutter/material.dart';
import 'package:onehabit/Dashboard.dart';
import 'package:onehabit/themes/color.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var styleInput = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(width: 250),
          Icon(Icons.person, color: Purple, size: 80),
          const Text(
            'Register',
            style: TextStyle(fontFamily: 'outfit', fontSize: 55),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 4.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 2.0),
                ),
                hintText: 'Enter your name',
                prefixIcon: Icon(
                  Icons.person,
                  color: Purple,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 4.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 2.0),
                ),
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  Icons.email,
                  color: Purple,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 4.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Purple, width: 2.0),
                ),
                hintText: 'Enter your password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Purple,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Purple),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(
                  color: Purple,
                  width: 3.0,
                ),
              )),
            ),
            child: const Text("Register"),
          ),
        ]),
      ),
    );
  }
}
