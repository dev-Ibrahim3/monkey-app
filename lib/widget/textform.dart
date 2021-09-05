import 'package:flutter/material.dart';

class textform extends StatelessWidget {
  final String hintText;
  textform(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            filled: true,
            fillColor: Colors.grey[400],
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ))),
      ),
    );
  }
}
