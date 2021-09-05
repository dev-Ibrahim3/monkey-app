import 'package:flutter/material.dart';
import '../screens/signupscreen.dart';
import '../screens/loginscreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 380,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset("assets/images/background.jpg"),
                  Positioned(
                    top: 175,
                    left: 70,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Discover the Best Foods from over 1,000 restaurants and fast delivery to your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 70,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                onPressed: () {
                  //login logic
                  Navigator.of(context)
                      .pushReplacementNamed(loginScreen.routename);
                },
                child: Text(
                  "Login",
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
              height: 70,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: OutlinedButton(
                onPressed: () {
                  //sign up
                  Navigator.of(context)
                      .pushReplacementNamed(signupScreen.routename);
                },
                child: Text(
                  "Create An Account",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
