import 'package:chat_app/Screens/loginscreen.dart';
import 'package:chat_app/Screens/registerscreen.dart';
import 'package:flutter/material.dart';

class LoginorRegister extends StatefulWidget {
  const LoginorRegister({super.key});

  @override
  State<LoginorRegister> createState() => _LoginorRegisterState();
}

class _LoginorRegisterState extends State<LoginorRegister> {
  bool showLoginScreen=true;

  void togglepages(){
    setState(() {
      showLoginScreen= !showLoginScreen;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginScreen) {
      return LoginScreen(onTap: togglepages,);
    }else{
return RegisterScreen(onTap: togglepages,);
    }
  }
}
