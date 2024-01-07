import 'package:chat_app/Screens/loginscreen.dart';
import 'package:chat_app/Screens/registerscreen.dart';
import 'package:chat_app/Theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      home: const RegisterScreen(),
    );
  }
}
