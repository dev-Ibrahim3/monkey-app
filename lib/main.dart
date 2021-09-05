import 'package:flutter/material.dart';
import './screens/splashscreen.dart';
import './screens/signupscreen.dart';
import './screens/loginscreen.dart';
import './screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.white70,
      ),
      home: Home(),
      routes: {
        loginScreen.routename: (ctx) => loginScreen(),
        signupScreen.routename: (ctx) => signupScreen(),
        splashScreen.routename: (ctx) => splashScreen(),
      },
    );
  }
}
