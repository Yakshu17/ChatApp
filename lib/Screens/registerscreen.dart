import 'package:flutter/material.dart';
import '../components/mybutton.dart';
import '../components/mytextfield.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key,required this.onTap});

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _confirmpasscontroller = TextEditingController();
   void Function()? onTap;
   void register(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Welcome back you've been missed",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _passcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Confrim Password ",
              obscureText: true,
              controller: _confirmpasscontroller,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(onTap: register, text: "Register"),
            const SizedBox(
              height: 25,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    " Login Now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
