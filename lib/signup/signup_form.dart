import 'package:flutter/material.dart';
import 'package:app/model/utilities.dart';
import 'package:app/model/user.dart';
import 'package:flutter/cupertino.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var email = TextEditingController();
  final password = TextEditingController();
  final confirm = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            emailTextFormField(),
            SizedBox(
              height: 30,
            ),
            passwordTextFormField(),
            SizedBox(
              height: 30,
            ),
            confirmTextFormField(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context,
                        User(username: email.text, password: confirm.text));
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(color: Colors.green),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                    // child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9), shape: BoxShape.circle),
                    // child: SvgPicture.asset("assets/icons/twitter.svg"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      controller: email,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)),
      //validator: Utilities.validateEmail,

      validator: (email) {
        return Utilities.validateEmail(email.toString());
      },
      onSaved: (value) {
        setState(() {
          email.text = value.toString();
        });
      },
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
        key: _passKey,
        controller: password,
        obscureText: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(Icons.lock_outline)),
        validator: (passwordKey) {
          return Utilities.validatePassword(passwordKey.toString());
        });
  }

  TextFormField confirmTextFormField() {
    return TextFormField(
      controller: confirm,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
      validator: (confirmPassword) {
        // var pass = _passKey.currentState.value();
        // return Utilities.confirmPassword(confirmPassword.toString(),pass);
      },
      onSaved: (value) {
        setState(() {
          confirm.text = value.toString();
        });
      },
    );
  }
}
