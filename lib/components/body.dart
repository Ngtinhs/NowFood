import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            SignInFrom(),
            footerScreen(context),
          ],
        ),
      ),
    ));
  }
}
