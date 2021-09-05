import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class splashScreen extends StatelessWidget {
  static const routename = "/splashscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("assets/images/splashscreenf.png"),
      ),
    );
  }
}
