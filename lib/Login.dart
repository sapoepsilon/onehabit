import 'package:flutter/material.dart';
import 'package:onehabit/Dashboard.dart';
import 'package:onehabit/Helpers/extensions.dart';
import 'package:onehabit/themes/color.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var styleInput = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(width: 250),
          loginIcon(),
          loginText(),
          loginTextField(),
          passwordField(),
          dashboardButton(),
        ]),
      ),
    );
  }

  Icon loginIcon() {
    return const Icon(Icons.person, color: Purple, size: 80);
  }

  void navigateToDashboard() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  Text loginText() {
    return const Text('Login').loginText();
  }

  TextButton dashboardButton() {
    return TextButton(
      onPressed: navigateToDashboard,
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
      child: const Text("Login"),
    );
  }

  Widget loginTextField() {
    return SizedBox(
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
    );
  }

  Widget passwordField() {
    return SizedBox(
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
    );
  }
}
