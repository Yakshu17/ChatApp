import 'package:chat_app/auth/auth_method.dart';
import 'package:chat_app/components/mybutton.dart';
import 'package:chat_app/components/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key,required this.onTap});
  final TextEditingController _emailcontroller =TextEditingController();
  final TextEditingController _passcontroller =TextEditingController();
  final  void Function()? onTap;

  void login(BuildContext context) async{
    final authMethod = AuthMethod();
    try {
      await authMethod.signInWithEmailPassword(_emailcontroller.text.toString(),_passcontroller.text.toString());
    }
    catch(e){
      showDialog(context: context,
          builder:(context)=>AlertDialog(
            title: Text(e.toString()),
          ) );
    }

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
           MyButton(onTap:() => login(context),
               text: "Login"),

            const SizedBox(height: 25,),

  Row(
   mainAxisAlignment:MainAxisAlignment.center,
   children: [
     const Text("Not a member?"),
     GestureDetector(
       onTap: onTap,
       child: const Text(" Register Now",
         style: TextStyle(fontWeight: FontWeight.bold),),
     ),
   ],
 ),
          ],
        ),
      ),
    );
  }
}
