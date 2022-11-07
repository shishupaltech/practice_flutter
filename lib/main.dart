import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_practice/function_in_dart.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/login_page.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
      primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData( 
        brightness: Brightness.dark
      ),
      initialRoute: "/home",
      routes:{
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      } ,
      

    );
  }

  
}