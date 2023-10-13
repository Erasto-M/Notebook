import 'package:flutter/material.dart';
import 'package:notebook/Authentication/signin.dart';
import 'package:notebook/Widgets/reusablewidgets.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
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
                  bigText(text: "Let's Get Started", color: Colors.black87),
                  smallSpace(),
                  textFormField
                    (text: "FName",
                      labelText: "Enter FirstName",
                      obSecureText: false,
                      icon: const Icon(Icons.person),
                      controller: firstNameController,
                      textInputType: TextInputType.text),
                  smallSpace(),
                  textFormField
                    (text: "LName",
                      labelText: "Enter LastName",
                      obSecureText: false,
                      icon: const Icon(Icons.person),
                      controller: lastNameController,
                      textInputType: TextInputType.text),
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
                  smallSpace(),
                  textFormField
                    (text: "Confirm PWD",
                      labelText: "Confirm Password",
                      obSecureText: true,
                      icon: const Icon(Icons.lock),
                      controller: confirmPasswordController,
                      textInputType: TextInputType.text),
                  bigSpace(),
                  elevatedButton(
                      function: (){},
                      color: Colors.white,
                      text1: "Create Account"),
                  smallSpace(),
                  TextButton(onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>const SignIn())
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
