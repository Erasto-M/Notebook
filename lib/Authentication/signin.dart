import 'package:flutter/material.dart';
import 'package:notebook/Authentication/Signup.dart';
import 'package:notebook/Widgets/reusablewidgets.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child:  Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  bigText(text: "Hello,", color: Colors.black,),
                  smallSpace(),
                  bigText(text: "Welcome Back,", color: Colors.black87),
                  smallSpace(),
                  textFormField
                    (text: "Email",
                      labelText: "Enter Email",
                      obSecureText: false,
                      icon: const Icon(Icons.email),
                      controller: emailController,
                      textInputType: TextInputType.emailAddress),
                  smallSpace(),
                  textFormField
                    (text: "PWD",
                      labelText: "Enter password",
                      obSecureText: true,
                      icon: const Icon(Icons.lock),
                      controller: passWordController,
                      textInputType: TextInputType.text),
                  bigSpace(),
                  elevatedButton(
                      function: (){},
                      color: Colors.white,
                      text1: "Login"),
                  smallSpace(),
                  TextButton(onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>const SignUp())
                    );
                  },
                      child: const Text("Already have an account? Login ",
                        style: TextStyle(fontSize: 25),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
