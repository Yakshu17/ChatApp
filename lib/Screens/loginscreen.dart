import 'package:chat_app/components/mybutton.dart';
import 'package:chat_app/components/mytextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller =TextEditingController();
  final TextEditingController _passcontroller =TextEditingController();

void login(){

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,),
            const SizedBox(height: 50,),
            Text("Welcome back you've been missed",
            style: TextStyle(color: Theme.of(context).colorScheme.primary,
            fontSize:16 ),
            ),
            const SizedBox(height: 25,),
         MyTextField(hintText: "Email",obscureText: false,controller: _emailcontroller,),
            const SizedBox(height: 10,),
            MyTextField(hintText: "Password",obscureText: true,controller: _passcontroller,),

           const SizedBox(height: 25,),
           MyButton(onTap:login,text: "Login"),

            const SizedBox(height: 25,),
            
 Row(
   mainAxisAlignment:MainAxisAlignment.center,
   children: [
     Text("Not a member?"),
     Text("Register Now",style: TextStyle(fontWeight: FontWeight.bold),),
   ],
 ),











          ],
        ),
      ),
    );
  }
}
