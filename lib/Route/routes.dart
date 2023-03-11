import 'dart:js';

import 'package:app/cart/cartpage.dart';
import 'package:app/detail/productpage.dart';
import 'package:app/homepage/homepage.dart';
import 'package:app/model/product.dart';
import 'package:app/signup/signupsreen.dart';
import 'package:app/signin/signinpage.dart';
import 'package:app/signup/signup_page.dart';
import 'package:app/splashPage.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SingInPage.routeName: (context) => SingInPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
  ProductPage.routeName: (context) => ProductPage(),
  cartpage.routeName: (context) => cartpage(),
};
