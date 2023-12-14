import 'package:flutter/material.dart';
import 'package:register/login.dart';
import 'package:register/sign_up.dart';

void main(){
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget{
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUp.routeName: (context) => SignUp(),
      },
    );
  }
}