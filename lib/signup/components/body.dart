import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../signup_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "RegisterAccount",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  height: 1.5),
            ),
            Text(
              "Abc",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            SignUpForm()
          ],
        ),
      ),
    ));
  }
}
