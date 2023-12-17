import 'package:flutter/material.dart';
import 'package:register/pages/home.dart';
import 'package:register/pages/login.dart';
import 'package:register/pages/sign_up.dart';

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
        HomeScreen.routeName : (context) => const HomeScreen(),
      },
    );
  }
}