import 'package:flutter/material.dart';
import '../screens/loginscreen.dart';
import '../widget/textform.dart';

class signupScreen extends StatelessWidget {
  static const routename = "/signupscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text(
                      "Sign UP",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Add your details to Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  textform("Name"),
                  textform("E-mail"),
                  textform("mobile-number"),
                  textform("Adress"),
                  textform("Password"),
                  textform("Confrim Password"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  //login logic
                },
                child: Text(
                  "Sign UP",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  padding: EdgeInsets.all(8),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account!",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(loginScreen.routename);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
