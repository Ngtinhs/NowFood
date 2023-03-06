import 'package:flutter/material.dart';
// import 'package:app/homepage/homepage.dart';
// import 'package:app/model/user.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import '../signup/signupsreen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});


  @override
  _SignInFormState createState() => _SignInFormState();
}



class _SignInFormState extends State<SignInForm> {
  final _formKey= GlobalKey<FormState>();
  bool _value = false;
  var prefs;
  final username = TextEditingController();
  final password = TextEditingController();
  FToast fToast;


@override
void initState (){
  super.initState();
  fToast = FToast();
  fToast.init(context);
  _getData();
}


_getData() async{
  prefs = await SharedPreferences.getInstance();
}


if(!prefs.getString("username").isEmpty){
username.text = prefs.getString("username");
username.text = prefs.getString("password");

_value = prefs.getBool("check");
}
}

@override

Widget build(BuildContext context) {
  return Form (
    key: _formKey,
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.all(8),
                 alignment: Alignment.center,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Food Now", style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold),),
                    Text(
                      "Sign in with your Email and password",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green),
                    )
                  ],
           ) ),
Padding(padding: const EdgeInsets.all(16.0),
child: Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextFormField(
        validator: (value) {
          return utilities.validatePasswords(value);

        },

        onSaved: (value) {
setState((){

username.text = value;


});
controller: username,
Decoration: const InputDecoration(

border: OutlineInputBorder(),
hintText: "Username",
prefixIcon: Icon(Icons.mail_outline)
),)
const SizedBox(height: 5,),
TextFormField(
  controller: password,
  validator: (value) {
    return utilities.validatePasswords(value);
  },

  keyboardType: TextInputType.number,
  obscureText: true,
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    hintText: "Password",
    prefixIcon: Icon(Icons.lock_clock_rounded)
  ),),
  const SizedBox(height: 5,),
  const SizedBox(height: 5,),


  SizedBox(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: RaisedButton(
      onPressed: () async {
if (_value){


prefs = await SharedPreferences.getInstance();


prefs.setString("username", username.text);
prefs.setString("password", password.text);

} else{
  prefs.remove("check");
}

Navigator.pushNamed(context, HomePage.routeName);

 },
 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
Color: Colors.green,
child: const Text("Continue", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
  ),
  const SizedBox(height: 30,),
  SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors(0xFFF5F6F9),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/facebook.svg"),
        ),
        Container(
           height: 40,
          width: 40,
          margin: const EdgeInsets.only(left: 10, right: 10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors(0xFFF5F6F9),
            shape: BoxShape.circle
        ),
child: SvgPicture.asset("assets/icons/google-icon.svg"),

        ),

Container(
           height: 40,
          width: 40,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors(0xFFF5F6F9),
            shape: BoxShape.circle
        ),
child: SvgPicture.asset("assets/icons/twitter.svg"),
)
      ],
    ),
  ),
  const SizedBox(height: 5,),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text("ABc", style: TextStyle(color: Colors.green, fontSize: 14),),
      GestureDetector(
        onTap: () async {
final result = await Navigator.pushNamed(context, SignUpPage.routeName);
User user = result;
username.text = user.username;
        },
        child: Text("Sign Up", style: TextStyle(color: Colors.redAccent, fontWeight: 14),))
    ],
  )
    ],
  ),
),
),

        ],
      ),
    ),
  ),
}
}
 



