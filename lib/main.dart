import 'package:flutter/material.dart';
import 'package:projek_ui/welcome_screen.dart';
import 'package:projek_ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        WelcomeScreen.routes: (context) => const WelcomeScreen(),
        LoginScreen.routes: (context) => const LoginScreen(),
      },
    );
  }
}
