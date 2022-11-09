import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/cart_page.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_practice/function_in_dart.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/cart": (context) => CartPage(),
        // MyRoutes.homeRoute: (context)=>HomePage(),
        // MyRoutes.loginRoute:(context)=>LoginPage(),
      },
    );
  }
}
