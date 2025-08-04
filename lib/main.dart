import 'package:flutter/material.dart';
import 'package:fresh/welcome/welcome.dart';
import 'package:fresh/signin/signin.dart';
import 'package:fresh/signup/signup.dart';
import 'package:fresh/welcome/choose_auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => welcome(),
               '/signin': (context) => Signin(),
               '/signup': (context) => Signup(),
 '/auth': (context) => const AuthSwitcherScreen(),}             
    );
  }
}
