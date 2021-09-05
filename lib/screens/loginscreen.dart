import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../widget/textform.dart';
import '../screens/signupscreen.dart';

class loginScreen extends StatelessWidget {
  static const routename = '/loginscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Add your details to login",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  textform(" Your E-mail"),
                  textform("Password"),
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
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
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
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Your Password?",
                        style: TextStyle(color: Colors.grey),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "or login With",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.fromLTRB(8, 20, 8, 0),
                    child: SignInButton(
                      Buttons.Facebook,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  ),
                  Container(
                      height: 70,
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.fromLTRB(8, 0, 8, 20),
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account!",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(signupScreen.routename);
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.grey),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
