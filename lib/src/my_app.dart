import 'package:flutter/material.dart';
import 'package:reactive_programming/src/Screens/login_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login me in",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
