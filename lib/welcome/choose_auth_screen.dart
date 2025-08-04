import 'package:flutter/material.dart';
import 'package:fresh/signin/signin.dart';
import 'package:fresh/signup/signup.dart';
      

class AuthSwitcherScreen extends StatefulWidget {
  const AuthSwitcherScreen({super.key});

  @override
  State<AuthSwitcherScreen> createState() => _AuthSwitcherScreenState();
}

class _AuthSwitcherScreenState extends State<AuthSwitcherScreen> {
  bool isSignIn = true;

  void toggleView() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double boxWidth = 350;
    const double boxHeight = 500;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: boxWidth,
          height: boxHeight,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                left: isSignIn ? 0 : -boxWidth,
                top: 0,
                child: SizedBox(
                  width: boxWidth,
                  height: boxHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(child: Signin()),  // هنا تحط صفحة تسجيل الدخول
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: toggleView,
                          child: const Text(
                            "Don't have an account? Sign Up",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                left: isSignIn ? boxWidth : 0,
                top: 0,
                child: SizedBox(
                  width: boxWidth,
                  height: boxHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(child: Signup()),  // هنا تحط صفحة تسجيل الاشتراك
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: toggleView,
                          child: const Text(
                            "Already have an account? Sign In",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

