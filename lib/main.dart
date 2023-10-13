import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notebook/Authentication/Signup.dart';
import 'package:notebook/Authentication/signin.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async{
  runApp(const MYAPP());
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if(user==null){
      print("User is currently signed Out");
    } else{
      print("User is currently signed IN");
    }
  });
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
}
class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  SignUp(),
        debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}


